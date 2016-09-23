//
//  main.m
//  类工厂
//
//  Created by 691 on 16/9/1.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"
//类工厂用于快速创建方法不用每次写 Person *p =[[Person alloc] init];
int main(int argc, const char * argv[]) {
//    Person *p =[[Person alloc] init];之前这样创建
//    Person *p1 = [Person person ];
//    p1.age =10;
//    NSLog(@"age=%i",p1.age);
//    [Person personWithAge:30];
    NSLog(@"%@", [Person personWithAge:30]);
    NSLog(@"%@", [Student personWithAge:20]);
    Student *i = [Student person];
    i.no = 90;
    NSLog(@"%i", i.no);

    
    
    
    //自定义工厂方法是一种规范，我们提供自定义构造方法和自定义构造工厂方法用于创建一个对象。
    return 0;
}
