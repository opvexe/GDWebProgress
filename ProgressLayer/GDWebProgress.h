//
//  GDWebProgress.h
//  GDWebProgress
//
//  Created by admin on 2017/7/5.
//  Copyright © 2017年 光大银行. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>
#import <UIKit/UIKit.h>

@interface GDWebProgress : CAShapeLayer

- (void)startLoad;

- (void)finishedLoad;

- (void)closeTimer;

@end
