//
//  NSTimer+Addtion.m
//  GDWebProgress
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 光大银行. All rights reserved.
//

#import "NSTimer+Addtion.h"

@implementation NSTimer (Addtion)

- (void)pause {
    if (!self.isValid) return;
    [self setFireDate:[NSDate distantFuture]];
}

- (void)resume {
    if (!self.isValid) return;
    [self setFireDate:[NSDate date]];
}

- (void)resumeWithTimeInterval:(NSTimeInterval)time {
    if (!self.isValid) return;
    [self setFireDate:[NSDate dateWithTimeIntervalSinceNow:time]];
}

@end
