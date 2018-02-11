//
//  WeexNatAlipay.m
//
//  Created by Acathur on 17/10/1.
//  Copyright © 2017 Instapp. All rights reserved.
//

#import "WeexNatAlipay.h"
#import <WeexPluginLoader/WeexPluginLoader.h>
#import <NatAlipay/NatAlipay.h>

@implementation WeexNatAlipay
@synthesize weexInstance;

WX_PlUGIN_EXPORT_MODULE(nat/alipay, WeexNatAlipay)
WX_EXPORT_METHOD(@selector(pay::))
WX_EXPORT_METHOD(@selector(auth::))

- (void)pay:(NSDictionary *)params :(WXModuleCallback)callback{
    [[NatAlipay singletonManger] pay:params :^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }

    }];
}

- (void)auth:(NSDictionary *)params :(WXModuleCallback)callback{
    [[NatAlipay singletonManger] auth:params :^(id error,id result) {
        if (error) {
            if (callback) {
                callback(error);
            }
        } else {
            if (callback) {
                callback(result);
            }
        }

    }];
}

@end
