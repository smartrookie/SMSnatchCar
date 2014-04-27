//
//  SMMasterInfoViewController.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/27/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMMasterInfoViewController.h"

@interface SMMasterInfoViewController ()

@end

@implementation SMMasterInfoViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setTitle:@"个人信息"];
        
    }
    return self;
}

#pragma mark - Public Method

+ (id)sharedInstance
{
    static SMMasterInfoViewController *SINGLETON = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SINGLETON = [[SMMasterInfoViewController alloc] init];
    });
    
    return SINGLETON;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
