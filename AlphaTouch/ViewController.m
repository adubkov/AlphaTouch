//
//  ViewController.m
//  AlphaTouch
//
//  Created by Alexey Dubkov on 1/4/18.
//  Copyright © 2018 Alexey Dubkov. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    
    // Buttom "Make 50%"
    UIButton *_fiftyPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.fiftyPercentButton = _fiftyPercentButton;
    self.fiftyPercentButton.frame = CGRectMake(150, 100, 100, 44);
    self.fiftyPercentButton.backgroundColor = [UIColor whiteColor];
    [self.fiftyPercentButton setTitle:@"Make 50%" forState:UIControlStateNormal];
    [self.fiftyPercentButton addTarget:self
                    action:@selector(buttonPressed:)
          forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.fiftyPercentButton];
    
    // Button "Make 100%"
    UIButton *_hundredPercentButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.hundredPercentButton = _hundredPercentButton;
    self.hundredPercentButton.frame = CGRectMake(150, 300, 100, 44);
    self.hundredPercentButton.backgroundColor = [UIColor whiteColor];
    [self.hundredPercentButton setTitle:@"Make 100%" forState:UIControlStateNormal];
    [self.hundredPercentButton addTarget:self
                     action:@selector(buttonPressed:)
           forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.hundredPercentButton];
    
    // Label
    UILabel *_firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(100, 30, 200, 44)];
    self.firstLabel = _firstLabel;
    self.firstLabel.text = @"Hello, welcome to my app!";
    self.firstLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.firstLabel];
}

- (void)loadView {
    CGRect viewRect = [[UIScreen mainScreen] bounds];
    self.view = [[UIView alloc] initWithFrame:viewRect];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"Start touching the screen");
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"End touching the screeen");
}

- (void)buttonPressed:(UIButton *)sender {
    NSLog(@"Button pressed, sender %@", sender);
    if ([sender isEqual:self.fiftyPercentButton]) {
        self.view.alpha = .5;
    } else {
        self.view.alpha = 1;
    }
    // self.view.alpha = ((double)arc4random() / 0x100000000);
    // Remove button from the view
    // [sender removeFromSuperview];
}

@end
