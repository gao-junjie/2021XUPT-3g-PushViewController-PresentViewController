//
//  FirstViewController.m
//  present和push
//
//  Created by mac on 2021/9/16.
//  Copyright © 2021 mac. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "PresentViewController.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
    UIButton* presentButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [presentButton setTitle:@"present下一个界面" forState:UIControlStateNormal];
    presentButton.frame = CGRectMake(100, 400, 150 , 70);
    [presentButton addTarget:self action:@selector(pressPresentButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:presentButton];
    
    UIButton* pushButton = [UIButton buttonWithType:UIButtonTypeSystem];
    [pushButton setTitle:@"push下一个界面" forState:UIControlStateNormal];
    pushButton.frame = CGRectMake(100, 150, 150 , 70);
    [pushButton addTarget:self action:@selector(pressPushButton) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushButton];
}

- (void)pressPresentButton {
    PresentViewController* presentViewController = [[PresentViewController alloc] init];
    [self presentViewController:presentViewController animated:YES completion:nil];
}

- (void)pressPushButton {
    SecondViewController* secondViewController = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondViewController animated:YES];
}
@end
