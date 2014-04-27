//
//  SMSnatchHistoryViewController.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/27/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMSnatchHistoryViewController.h"

@interface SMSnatchHistoryViewController ()

@end

@implementation SMSnatchHistoryViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setTitle:@"约车记录"];
    }
    return self;
}

+ (id)sharedInstance
{
    static SMSnatchHistoryViewController *SINGLETON = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SINGLETON = [[SMSnatchHistoryViewController alloc] init];
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
