//
//  VXCommonPageServiceProvide.m
//  VXCommonPage
//
//  Created by voidxin on 17/4/13.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import "VXCommonPageServiceProvide.h"
#import <VXProtocolManager/VXProtocolManager.h>
#import <VXCommonPageServicePtotocol/VXCommonPageServicePtotocol.h>
#import "VXCommonPageViewController.h"
@interface VXCommonPageServiceProvide ()<VXCommonPageServicePtotocol>
@end

@implementation VXCommonPageServiceProvide
+ (void)load {
    [VXProtocolManager registServiceProvide:[self new] forProtocol:@protocol(VXCommonPageServicePtotocol)];
}


- (UIViewController *)commonPageViewControllerWith:(id)object {
    VXCommonPageViewController *commonVC = [[VXCommonPageViewController alloc] initCommonPageViewControllerWithObject:object];
    return commonVC;
}
@end
