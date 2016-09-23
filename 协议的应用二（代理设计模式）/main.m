//
//  main.m
//  协议的应用二（代理设计模式）
//
//  Created by 691 on 16/9/13.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "LinkHome.h"

#import "LoveHome.h"
int main(int argc, const char * argv[]) {
//    代理实现学生找房子
    
    
//    a找B 帮忙  B就是a的代理
    Student *s = [[Student alloc]init];
//    LinkHome *lh = [[LinkHome alloc]init];
    LoveHome *lo = [[LoveHome alloc]init];
    
    
    s.delegate= lo;
    
   [s findHouse];
    
//    NSLog(@"%@",[Student class]);
      return 0;
}
