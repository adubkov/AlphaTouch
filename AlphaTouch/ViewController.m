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
    
    // Buttom
    UIButton *firstButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    firstButton.frame = CGRectMake(100, 100, 100, 44);
    firstButton.backgroundColor = [UIColor whiteColor];
    [firstButton setTitle:@"Click me!" forState:UIControlStateNormal];
    [self.view addSubview:firstButton];
    
    // Label
    UILabel *firstLabel = [[UILabel alloc] initWithFrame:CGRectMake(50, 30, 200, 44)];
    firstLabel.text = @"Hello, welcome to my app!";
    firstLabel.backgroundColor = [UIColor clearColor];
    [self.view addSubview:firstLabel];
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
@end
