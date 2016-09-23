//
//  main.m
//  SEL
//
//  Created by 691 on 16/9/2.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Car.h"
int main(int argc, const char * argv[]) {
    Person *p = [[Person alloc]init];
    //    全称Selector 表示方法的存储位置。sel是一种数据类型，存放方法的地址，在类对象的映射表里面存放着映射关系
    //1,SEL将方法包装成sel   也可以查看类方法有没有实现
    SEL sel = @selector(setAge:);
//        [p performSelector:sel];
    BOOL sel1= [p respondsToSelector:sel];
       NSLog(@"%i",sel1);
//    2.不常用，调用指定方法
    SEL sel4 = @selector(sendMessageWithNumber:andContent:);
    [p performSelector:sel4 withObject:@"11" withObject:@"df"];

    
//    3.另外我们也可以结合对象一起使用，包装起来方法作为行参传递
    id c = [[Car alloc]init];
    SEL sel2 = @selector(run);
    [p makeObject:c andSel:sel2];
    
    
    return 0;
}
