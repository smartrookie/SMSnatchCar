//
//  SMCSnatchViewController.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/26/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMCSnatchViewController.h"
#import "IIViewDeckController.h"

@interface SMCSnatchViewController ()<UITableViewDelegate,UITableViewDataSource> {
    UITableView *tableview;
    NSArray     *dateArray;
    UIButton    *btn_snatch;
}

@end

@implementation SMCSnatchViewController

#pragma mark - Public Method

+ (id)sharedInstance
{
    static SMCSnatchViewController *SINGLETON = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SINGLETON = [[SMCSnatchViewController alloc] init];
    });
    
    return SINGLETON;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setTitle:@"我要约车"];
    UIBarButtonItem *rightBarButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemRefresh target:self action:@selector(refreshAction:)];
    [rightBarButton setTintColor:[UIColor blueColor]];
    [self.navigationItem setRightBarButtonItem:rightBarButton];
    
    btn_snatch = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn_snatch setFrame:CGRectMake(15, CGRectGetHeight(self.view.frame) - 60, 290, 50)];
    [btn_snatch setTitle:@"我要抢车" forState:UIControlStateNormal];
    [btn_snatch.layer setCornerRadius:4];
    [btn_snatch setBackgroundColor:[UIColor blueColor]];
    [self.view addSubview:btn_snatch];
    
    tableview = ({
        UITableView *_tableview = [[UITableView alloc] init];
        [_tableview setFrame:CGRectMake(0, CGRectGetHeight(self.navigationController.navigationBar.frame)+20, 320, CGRectGetMinY(btn_snatch.frame)-CGRectGetHeight(self.navigationController.navigationBar.frame)-30)];
        [_tableview setDelegate:self];
        [_tableview setDataSource:self];
        _tableview;
    });
    [self.view addSubview:tableview];
    
}

- (void)refreshAction:(UIBarButtonItem *)sender
{
    
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    return cell;
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
