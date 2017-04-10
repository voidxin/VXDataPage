//
//  VXDataPageServiceProvide.m
//  VXDataPage
//
//  Created by voidxin on 17/4/10.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import "VXDataPageServiceProvide.h"
#import <VXProtocolManager/VXProtocolManager.h>
#import <VXDataPageServiceProcotol/VXDataPageServiceProcotol.h>
#import "VXDataPageViewController.h"
@interface VXDataPageServiceProvide()<VXDataPageServiceProcotol>
@end
@implementation VXDataPageServiceProvide
+ (void)load {
    [VXProtocolManager registServiceProvide:[self new] forProtocol:@protocol(VXDataPageServiceProcotol)];
}
- (UIViewController *)dataPageViewControllerWith:(id)object {
    VXDataPageViewController *dataVC = [[VXDataPageViewController alloc] initWithObjectForDataPageViewController:object];
    return dataVC;
}
@end
