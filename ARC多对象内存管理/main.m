//
//  main.m
//  ARC多对象内存管理
//
//  Created by 691 on 16/9/7.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
#import "Bone.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc]init];
        Dog* d= [[Dog alloc]init];
        Bone *b= [[Bone alloc]init];
        
        
        p.dog= d;
        d.owner = p;
        d.bone= b;
        b.dog =d;
        
        
        
//        p=nil;
//        d=nil;
    }
    
//    
//    [p release];
//    [d release];
    return 0;
}
