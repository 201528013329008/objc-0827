//
//  main.m
//  匿名对象
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Iphone.h"

int main(int argc, const char * argv[]) {
   //没有名字的对象
    
//    Person *p= [Person new];//有名p对象
//    p->_age=3;
//    p->_name= @"ff";
//     [p say];
    //每次new 都会新开辟存储空间／最后返回nill 0；
//    [Person new]->_age= 30;
//    [Person new]->_name= @"ff";
//    [[Person new] say];//匿名
//
//    [ [Iphone new] brand];//当对象只需要用一次时，可以匿名
//    
                         //匿名对象可以作为方法的实参；
   
    Person *p1 = [Person new];
    
    [p1 signal: [Iphone new] ];
    return 0;
}
