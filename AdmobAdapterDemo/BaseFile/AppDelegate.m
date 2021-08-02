//
//  AppDelegate.m
//  AdmobAdapterDemo
//
//  Created by Eason on 2021/8/2.
//

#import "AppDelegate.h"
#import <GoogleMobileAds/GoogleMobileAds.h>
#import <BUAdSDK/BUAdSDK.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    [[GADMobileAds sharedInstance] startWithCompletionHandler:^(GADInitializationStatus * _Nonnull status) {
        NSLog(@"Admob init complete");
        
        
        
        BUAdSDKConfiguration *configuration = [BUAdSDKConfiguration configuration];
        configuration.appID = @"5000546";
        [BUAdSDKManager startWithAsyncCompletionHandler:^(BOOL success, NSError *error) {
            if (error) {
                NSLog(@"pangle init failed");
            } else {
                NSLog(@"pangle init complete");
            }
        }];
        
        
        
        
    }];
    return YES;
}



@end
