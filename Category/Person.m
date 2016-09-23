//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/9/9.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"
@interface Person()
{int no;}
@end//匿名分类－－类扩展，，分类有名字，只能进行方法的扩展或重写，匿名分类（可以私有化属性，在后期的ui（控件）设计中用处比较多，封装好）

@implementation Person
-(void)say{
    
    NSLog(@"%i",self->no);}
@end
