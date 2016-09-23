//
//  main.m
//  解决循环retain（MRC）
//
//  Created by 691 on 16/9/6.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Dog.h"
int main(int argc, const char * argv[]) {

    Person *p = [[Person alloc]init];
    Dog* d= [[Dog alloc]init];
    
    p.dog= d;
    d.owner = p;
    
    [p release];
    [d release];
    return 0;
}
