//
//  SMUtiles.m
//  SMSnatchCar
//
//  Created by smartrookie on 4/26/14.
//  Copyright (c) 2014 SM. All rights reserved.
//

#import "SMUtiles.h"

static BOOL isLogin = NO;

@implementation SMUtiles

+ (BOOL)isLogin
{
    return isLogin;
}

+ (void)setLogin:(BOOL)state
{
    isLogin = state;
}

@end
