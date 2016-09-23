//
//  Dog.h
//  ocday02
//
//  Created by 691 on 16/9/6.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;
@interface Dog : NSObject

@property ( nonatomic,assign)Person *owner;
//解决循环retain的问题就是将retain改为assign，然后在.m文件中去掉［_owner release］,还是有增有减。

@end
