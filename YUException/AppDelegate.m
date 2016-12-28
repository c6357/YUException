//
//  AppDelegate.m
//  YUException
//
//  Created by BruceYu on 16/12/27.
//  Copyright © 2016年 BruceYu. All rights reserved.
//

#import "AppDelegate.h"
#import "NSException+YUException.h"
#import "UncaughtExceptionHandler.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    self.window.rootViewController = [UIViewController new];
    
    
#if 0
    [NSException unknownException:^(NSException *unknownException,BOOL *dismissed) {
        
        UIAlertController *alertController = [UIAlertController alertControllerWithTitle:NSLocalizedString(@"Unhandled exception", nil) message:[NSString stringWithFormat:NSLocalizedString(
                                                                                                                                                                                             @"You can try to continue but the application may be unstable.\n\n"
                                                                                                                                                                                             @"Debug details follow:\n%@", nil),
                                                                                                                                                 [unknownException reason]]
                                                                          preferredStyle:UIAlertControllerStyleAlert];
        [self.window.rootViewController presentViewController:alertController animated: NO completion:nil];
        
        #if 0
            [[NSRunLoop mainRunLoop] runUntilDate:[NSDate dateWithTimeIntervalSinceNow:10.0]];
            *dismissed = YES;
        #endif
        }];
#endif
    
    
    
    
    
#pragma mark - NSArray

    NSArray *arr = @[(id)NULL,(id)NULL,@"3",@"4",@"count"];
    NSLog(@"[arr objectAtIndex:6]:%@",[arr objectAtIndex:6]);
    NSMutableArray *arry = [NSMutableArray arrayWithArray:arr];
    NSLog(@"[arr objectAtIndex:6]:%@",[arry objectAtIndex:6]);
    [arry addObject:(id __nonnull)nil];
    [arry insertObject:(id __nonnull)nil atIndex:0];
    


#pragma mark - NSDictionary
    NSDictionary *dic = @{@"hello":@"world"};
    NSMutableDictionary *MDict= [NSMutableDictionary new];
    NSLog(@"%@",[dic objectForKey:(id __nonnull)nil]);

    [MDict setObject:(id __nonnull)nil forKey:@"hello"];
    [MDict removeObjectsForKeys:@[]];
    
    
    
#pragma mark - NSString
    NSMutableString *str = [[NSMutableString alloc]init];
    
    [str insertString:(id __nonnull)nil atIndex:0];
        [str appendString:(id __nonnull)nil];
    [str setString:(id __nonnull)nil];
    NSLog(@"%@",[str substringFromIndex:3]);
    NSLog(@"%@",[str substringToIndex:3]);
    NSLog(@"%@",[str substringWithRange:NSMakeRange(0, 3)]);

    
 #pragma mark - NSObject
    NSObject *obj = [[NSObject alloc] init];
    [obj setValue:nil forKey:@""];
    [obj valueForKey:(id __nonnull)nil];
    
    
#pragma mark -  unrecognized selector
    NSLog(@"%lu",(unsigned long)[((NSArray*)@"hello") count]);
    
    
#pragma mark -  unknownException
    
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"nil" bundle:nil];
        NSLog(@"%@",story);
    });
    

    return YES;
}

@end
