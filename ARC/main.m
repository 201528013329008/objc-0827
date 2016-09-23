//
//  main.m
//  ARC
//
//  Created by 691 on 16/9/7.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
//ARC是编译器的特性，不是其他语言的内存回收，ARC中只要没有强指针指向对象，对象就会被释放，默认情况下都是强指针
   //开发中不要用一个弱指针指向一个刚刚创建的对象
//    __weak  Person *p=[Person person];
    Person *p=[Person person];
    p.age= 10;
    NSLog(@"%i",p.age);
  
  
    return 0;
}
