//
//  main.m
//  Category
//
//  Created by 691 on 16/9/9.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Person+Sport.h"
int main(int argc, const char * argv[]) {
    Person *p= [[Person alloc]init];
    p.age= 10;
    
    NSLog(@"%i",p.age);
    
    [p playfootbool];
    [p say];
    return 0;
}
