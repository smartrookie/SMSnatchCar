//
//  SMAboutViewController.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/27/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMAboutViewController.h"

@interface SMAboutViewController ()

@end

@implementation SMAboutViewController

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setTitle:@"关于"];
    }
    return self;
}

#pragma mark - Public Method

+ (id)sharedInstance
{
    static SMAboutViewController *SINGLETON = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SINGLETON = [[SMAboutViewController alloc] init];
    });
    
    return SINGLETON;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
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
