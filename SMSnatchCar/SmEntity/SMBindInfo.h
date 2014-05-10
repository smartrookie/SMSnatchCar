//
//  SMBindInfo.h
//  SMSnatchCar
//
//  Created by smartrookie on 5/9/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

@interface SMBindInfo : NSObject

/**
 * gets singleton object.
 * @return singleton
 */
+ (SMBindInfo*)sharedInstance;

@property (copy, nonatomic) NSString *userName;

@property (copy, nonatomic) NSString *phoneNum;

@property (copy, nonatomic) NSString *nickName;

@property (copy, nonatomic) NSString *email;

@property (copy, nonatomic) NSString *password;

@property (copy, nonatomic) NSString *xxzh;

@property (copy, nonatomic) NSString *jgid;

@property (copy, nonatomic) NSString *webapiurl;

@property (copy, nonatomic) NSString *xybh;

@property (copy, nonatomic) NSString *sfzh;

@property (copy, nonatomic) NSString *iconpath;

@property (copy, nonatomic) NSString *username;

@property (copy, nonatomic) NSString *phonenum;

@property (copy, nonatomic) NSString *nickname;

@property (copy, nonatomic) NSString *qquid;

@property (copy, nonatomic) NSString *sinauid;

@property (copy, nonatomic) NSString *apiurl;

@property (copy, nonatomic) NSString *jxmc;

@property (copy, nonatomic) NSString *xm;





@end
