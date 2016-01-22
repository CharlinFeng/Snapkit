//
//  ViewController.m
//  Snapkit
//
//  Created by 冯成林 on 16/1/22.
//  Copyright © 2016年 冯成林. All rights reserved.
//

#import "ViewController.h"
#import "UIView+Snapkit.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] init];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    [redView make_centerWithOffset:CGPointMake(100, 100) width:100 height:80];
}

@end
