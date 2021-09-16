
//
//  PresentViewController.m
//  present和push
//
//  Created by mac on 2021/9/16.
//  Copyright © 2021 mac. All rights reserved.
//

#import "PresentViewController.h"

@interface PresentViewController ()

@end

@implementation PresentViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton* presentButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [presentButton setTitle:@"dismiss到上一个界面" forState:UIControlStateNormal];
    presentButton.frame = CGRectMake(100, 300, 150 , 70);
    [presentButton addTarget:self action:@selector(pressPresentButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:presentButton];
}
- (void)pressPresentButton {
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
