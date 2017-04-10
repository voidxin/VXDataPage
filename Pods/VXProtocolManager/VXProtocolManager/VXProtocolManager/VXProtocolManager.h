//
//  VXProtocolManager.h
//  VXProtocolManager
//
//  Created by voidxin on 17/4/6.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface VXProtocolManager : NSObject
+ (void)registServiceProvide:(id)provide forProtocol:(Protocol*)protocol;

+ (id)serviceProvideForProtocol:(Protocol *)protocol;
@end
