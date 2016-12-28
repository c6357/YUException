//
//  NSException+YYUException.h
//  YUKit<https://github.com/c6357/YUException>
//
//  Created by BruceYu on 15/9/1.
//  Copyright (c) 2015年 BruceYu. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface NSException (YUException)

+(void)unknownException:(void(^)(NSException *unknownException, BOOL*dismissed))unknownException;

@end




@interface NSException (exception)

-(void)exception:(void(^)(id obj))obj;

@end




@interface NSObject (runtime)

+ (void)swizzleSelectorWithClass:(Class)clazz originalSelector:(SEL)originalSelector withSelector:(SEL)swizzledSelector;

@end
