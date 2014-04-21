//
//  SMLeftViewController.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/21/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMLeftViewController.h"

@interface SMLeftViewController ()<UITableViewDelegate,UITableViewDataSource> {
    UITableView *tableview;
    NSArray     *tableArr;
}

@end

@implementation SMLeftViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    tableview = ({
        UITableView *_tableview = [[UITableView alloc] init];
        [_tableview setFrame:self.view.frame];
        [_tableview setDelegate:self];
        [_tableview setDataSource:self];
        _tableview;
    });
    [self.view addSubview:tableview];
    
    tableArr = @[@"广告",@"我要约车",@"约车记录",@"个人信息",@"关于"];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:1 inSection:0];
    [tableview selectRowAtIndexPath:indexPath animated:NO scrollPosition:UITableViewScrollPositionNone];

}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [tableArr count];
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        return CGRectGetHeight(tableView.frame) - [tableArr count]*44 - 20;
    } else {
        return 44;
    }
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableview dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    [cell.textLabel setText:tableArr[indexPath.row]];
    return cell;
}
- (NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        NSIndexPath *indexPathSelected = [tableView indexPathForSelectedRow];
        return indexPathSelected;
    }
    return indexPath;
}


@end
