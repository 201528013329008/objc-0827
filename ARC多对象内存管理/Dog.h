//
//  Dog.h
//  ocday02
//
//  Created by 691 on 16/9/6.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Person;
@class Bone;



@interface Dog : NSObject


@property ( nonatomic,weak)Person *owner;
@property(nonatomic,weak)Bone*bone;
//retain保存对象，assign专门用于保存基本数据类型，，，在arc中strong代替retain，用waak替代MRC中的assign 解决循环retain的问题
//MRC中解决循环retain的问题就是将retain改为assign，然后在.m文件中去掉［_owner release］,还是有增有减。

@end
