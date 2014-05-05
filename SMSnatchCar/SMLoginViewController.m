//
//  SMLoginViewController.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/27/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMLoginViewController.h"
#import "SMUtiles.h"

@interface SMLoginViewController (){
    UISegmentedControl *segmentCtrl;
    UIBarButtonItem *rightBarBtn;
    UITextField *username;
    UITextField *password;
    
}

@end

@implementation SMLoginViewController

+ (id)sharedInstance
{
    static SMLoginViewController *SINGLETON = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        SINGLETON = [[SMLoginViewController alloc] init];
    });
    
    return SINGLETON;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = nil;
    [self setTitle:@"登录"];
    
    segmentCtrl = [[UISegmentedControl alloc] initWithItems:@[@"登录",@"注册"]];
    [segmentCtrl setFrame:CGRectMake(0, 0, 120, 30)];
    [segmentCtrl setSelectedSegmentIndex:0];
    [segmentCtrl addTarget:self action:@selector(segmentedAction:) forControlEvents:UIControlEventValueChanged];
    [self.navigationItem setTitleView:segmentCtrl];
    
    
    rightBarBtn = [[UIBarButtonItem alloc] initWithTitle:@"登录" style:UIBarButtonItemStylePlain target:self action:@selector(rightBarButtonAction:)];
    self.navigationItem.rightBarButtonItem = rightBarBtn;
    
    UIView *userNameBg = [[UIView alloc] init];
    [userNameBg setFrame:CGRectMake(0, 100, 320, 44)];
    [userNameBg setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:userNameBg];
    
    UIView *passwordBg = [[UIView alloc] init];
    [passwordBg setFrame:CGRectMake(0, 146, 320, 44)];
    [passwordBg setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:passwordBg];
    
    username = [[UITextField alloc] init];
    [username setFrame:CGRectMake(0, 2, 320, 40)];
    [username setTextAlignment:NSTextAlignmentCenter];
    [username setClearButtonMode:UITextFieldViewModeWhileEditing];
    [username setPlaceholder:@"用户名"];
    [userNameBg addSubview:username];
    
    password = [[UITextField alloc] init];
    [password setFrame:CGRectMake(0, 2, 320, 40)];
    [password setTextAlignment:NSTextAlignmentCenter];
    [password setClearButtonMode:UITextFieldViewModeWhileEditing];
    [password setSecureTextEntry:YES];
    [password setPlaceholder:@"密码"];
    [passwordBg addSubview:password];
    
}

- (void)segmentedAction:(UISegmentedControl *)sender
{
    int seletedIndex = (int)sender.selectedSegmentIndex;
    if (seletedIndex == 0) {
        [rightBarBtn setTitle:@"登录"];
    } else {
        [rightBarBtn setTitle:@"注册"];
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [username resignFirstResponder];
    [password resignFirstResponder];
}

- (void)rightBarButtonAction:(UIBarButtonItem *)sender
{
    int seletedIndex = (int)segmentCtrl.selectedSegmentIndex;
    if (seletedIndex == 0) {
        NSLog(@"点击登录");
        [SMUtiles setLogin:YES];
        [self dismissViewControllerAnimated:YES completion:^{
            ;
        }];
    } else {
        NSLog(@"点击注册");
    }
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
