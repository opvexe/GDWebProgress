//
//  NSTimer+Addtion.h
//  GDWebProgress
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 光大银行. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (Addtion)
- (void)pause;

- (void)resume;

- (void)resumeWithTimeInterval:(NSTimeInterval)time;

@end
