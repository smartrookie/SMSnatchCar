//
//  SMBootViewController.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/26/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMBootViewController.h"

@interface SMBootViewController ()

@end

@implementation SMBootViewController

+ (instancetype)sharedInstance
{
    
    return nil;
}

- (void)inSetLeftBarItem
{
    UIBarButtonItem *leftBarItem =
    ({
        UIButton *backgview = [UIButton buttonWithType:UIButtonTypeCustom];
        [backgview setFrame:CGRectMake(0, 0, 30, 30)];
        [backgview setBackgroundColor:[UIColor grayColor]];
        [backgview setAlpha:0.8];
        [backgview.layer setCornerRadius:4];
        
        UIView *bluev = [[UIView alloc] init];
        [bluev setFrame:CGRectMake(4, 7, 22, 3)];
        [bluev setBackgroundColor:[UIColor blueColor]];
        [bluev.layer setCornerRadius:1];
        [backgview addSubview:bluev];
        
        UIView *yelv = [[UIView alloc] init];
        [yelv setFrame:CGRectMake(4, 14, 22, 3)];
        [yelv setBackgroundColor:[UIColor yellowColor]];
        [yelv.layer setCornerRadius:1];
        [backgview addSubview:yelv];
        
        UIView *redv = [[UIView alloc] init];
        [redv setFrame:CGRectMake(4, 21, 22, 3)];
        [redv setBackgroundColor:[UIColor redColor]];
        [redv.layer setCornerRadius:1];
        [backgview addSubview:redv];
        
        [backgview addTarget:self.viewDeckController action:@selector(toggleLeftView) forControlEvents:UIControlEventTouchUpInside];
        
        UIBarButtonItem *barBtnItem = [[UIBarButtonItem alloc] initWithCustomView:backgview];
        barBtnItem;
    });
    [self.navigationItem setLeftBarButtonItem:leftBarItem];
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor colorWithRed:220.0f/255 green:220.0f/255 blue:220.0f/255 alpha:1.0]];
    
    [self inSetLeftBarItem];
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
