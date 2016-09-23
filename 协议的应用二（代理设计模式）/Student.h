//
//  Student.h
//  ocday02
//
//  Created by 691 on 16/9/13.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "StudentProtocal.h"
@class Student;
//协议的编写规范
//1 当前协议属于谁，我们将协议定义到谁的头文件中@protocal，协议的名字以所属类名开头
//2,将被代理的对象传出，协议中的方法会将触发该协议的对象（所在类的对象）传递出去
//3协议属于被帮助的类（学生，被代理的类）由甲方制定，代理一般为delegate
//当某一个类要成为另外一个类的代理的时候，
///先在.h 中导入这个协议
////然后在.m中导入具体所在的类


@protocol StudentProtocal <NSObject>
- (void)helpStudentFind:(Student*) student;
@end


@interface Student : NSObject
//找房子
-(void)findHouse;
@property(nonatomic ,assign) id<StudentProtocal> delegate;
@end
