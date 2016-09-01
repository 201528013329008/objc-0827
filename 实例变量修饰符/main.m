//
//  main.m
//  实例变量修饰符
//
//  Created by 691 on 16/8/30.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"



int main(int argc, const char * argv[]) {
    
    
    Person *p =[Person new];
//    p.age= 10;
    p.age=-1;
    [p test];
    
   Student *pp = [Student new];
    pp.age= 10;
    NSLog(@"nima%i",[pp age]);
    
    pp.name = @"ll";
    [pp test];
    
//    [pp description];该句
   NSLog(@"%@",pp);//  ％@＋对象。该句会调用description方法（重写后的）
//    pp.isMarried = YES;//没有重写setter，只是getter
    pp.married= YES;//pp.married,相当于［pp setMarried:(yes)];
//    [pp setMarried:YES];
    if(pp .isMarried){
        NSLog(@"yes");}else{
            NSLog(@"no");}
    return 0;
}
