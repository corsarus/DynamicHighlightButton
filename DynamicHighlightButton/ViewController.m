//
//  ViewController.m
//  DynamicHighlightButton
//
//  Created by admin on 01/04/15.
//  Copyright (c) 2015 corsarus. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Highlight.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *darkButton;
@property (weak, nonatomic) IBOutlet UIButton *lightButton;


@end

@implementation ViewController

- (void)viewDidLoad
{
    
    [super viewDidLoad];
  
    UIImage *darkButtonIconImage = [UIImage imageNamed:@"icn_dark_button"];
    [self.darkButton setImage:darkButtonIconImage forState:UIControlStateNormal];
    
    [self.darkButton setTitle:@"Dark button" forState:UIControlStateNormal];
    [self.darkButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    self.darkButton.backgroundColor = [UIColor darkGrayColor];
    
    UIImage *lightButtonIconImage = [UIImage imageNamed:@"icn_light_button"];
    [self.lightButton setImage:lightButtonIconImage forState:UIControlStateNormal];
    
    [self.lightButton setTitle:@"Light button" forState:UIControlStateNormal];
    [self.lightButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    self.lightButton.backgroundColor = [UIColor lightGrayColor];
    
}

- (void)viewDidLayoutSubviews
{
    self.darkButton.titleEdgeInsets = UIEdgeInsetsMake(0.0f, 10.0f, 0.0f, 0.0f);
    self.lightButton.titleEdgeInsets = UIEdgeInsetsMake(0.0f, 10.0f, 0.0f, 0.0f);
    
    UIImage *highlightedButtonImage = [self.darkButton highlightedImage];
    [self.darkButton setImage:highlightedButtonImage forState:UIControlStateHighlighted];
    
    highlightedButtonImage = [self.lightButton highlightedImage];
    [self.lightButton setImage:highlightedButtonImage forState:UIControlStateHighlighted];
    
}

@end
