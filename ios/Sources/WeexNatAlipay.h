//
//  WeexNatAlipay.h
//
//  Created by Acathur on 17/10/1.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <WeexSDK/WeexSDK.h>

@protocol NatAlipayPro <WXModuleProtocol>

- (void)pay:(NSDictionary *)params :(WXModuleCallback)callback;
- (void)auth:(NSDictionary *)params :(WXModuleCallback)callback;

@end

@interface WeexNatAlipay : NSObject<NatAlipayPro>

@end
