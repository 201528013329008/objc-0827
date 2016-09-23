//
//  LoveHome.h
//  ocday02
//
//  Created by 691 on 16/9/13.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "StudentProtocal.h"
//#import "Student.h"
@protocol StudentProtocal;
//先在.h 中导入这个协议
//然后在.m中导入具体所在的类

@interface LoveHome : NSObject<StudentProtocal>

@end
