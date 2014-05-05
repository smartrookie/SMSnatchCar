//
//  SMLoginViewController.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/27/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMLoginViewController.h"
#import "SMUtiles.h"
#import "SVProgressHUD.h"

@interface SMLoginViewController (){
    UISegmentedControl *segmentCtrl;
    UIBarButtonItem *rightBarBtn;
    UITextField *usernameT;
    UITextField *passwordT;
    
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
    
    usernameT = [[UITextField alloc] init];
    [usernameT setFrame:CGRectMake(0, 2, 320, 40)];
    [usernameT setTextAlignment:NSTextAlignmentCenter];
    [usernameT setClearButtonMode:UITextFieldViewModeWhileEditing];
    [usernameT setPlaceholder:@"用户名"];
    [userNameBg addSubview:usernameT];
    
    passwordT = [[UITextField alloc] init];
    [passwordT setFrame:CGRectMake(0, 2, 320, 40)];
    [passwordT setTextAlignment:NSTextAlignmentCenter];
    [passwordT setClearButtonMode:UITextFieldViewModeWhileEditing];
    [passwordT setSecureTextEntry:YES];
    [passwordT setPlaceholder:@"密码"];
    [passwordBg addSubview:passwordT];
    
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
    [usernameT resignFirstResponder];
    [passwordT resignFirstResponder];
}

- (void)rightBarButtonAction:(UIBarButtonItem *)sender
{
    int seletedIndex = (int)segmentCtrl.selectedSegmentIndex;
    if (seletedIndex == 0) {
        NSLog(@"点击登录");
        [SMUtiles setLogin:YES];
        NSString *username = usernameT.text;
        NSString *password = passwordT.text;
        if (!username || [username isEqualToString:@""] ||
            !password || [password isEqualToString:@""]) {
            [SVProgressHUD showErrorWithStatus:@"用户名或密码不能为空" duration:2];
            return;
        }
        [SVProgressHUD showWithMaskType:SVProgressHUDMaskTypeClear];
        [SMPortalUtile studentLoginwithUserName:nil andPassword:nil andSuccess:^(AFHTTPRequestOperation *operation, id responseObject) {
            NSLog(@"success operation = %@",operation.responseString);
            [SVProgressHUD dismiss];
            [self dismissViewControllerAnimated:YES completion:^{
                ;
            }];
        } andFailure:^(AFHTTPRequestOperation *operation, NSError *error) {
            [SVProgressHUD dismiss];
            NSLog(@"failure errorInfo = %@",error.description);
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
