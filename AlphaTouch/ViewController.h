//
//  ViewController.h
//  AlphaTouch
//
//  Created by Alexey Dubkov on 1/4/18.
//  Copyright © 2018 Alexey Dubkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) UIButton *fiftyPercentButton;
@property (weak, nonatomic) UIButton *hundredPercentButton;
@property (weak, nonatomic) UILabel *firstLabel;

- (void)buttonPressed:(UIButton *)sender;

@end
