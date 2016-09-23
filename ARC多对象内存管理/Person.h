
//  Person.h
//  ocday02
//
//  Created by 691 on 16/9/6.
//  Copyright © 2016年 691. All rights reserved.


#import <Foundation/Foundation.h>
@class Dog;//放到@interface外面

@interface Person : NSObject

@property ( nonatomic, strong)Dog* dog;
//arc中A对象想保存B对象的话，那么需要一个强指针指向B对象，保存对象不要用retain，用strong。A不想用B了什么也不用做，编译器自动为我们释放
//arc中保存一个对象用strong，相当于mrc中的retain，如果两个对象相互拥有一方用strong 一方用weak
//保存基本数据类型还是用assign，和mrc一样

@end
