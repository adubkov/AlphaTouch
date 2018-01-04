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
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    // Do any additional setup after loading the view, typically from a nib.
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
