//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/8/31.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"
#import "Student.h"

@implementation Person

//构造方法初始化实例变量的值，实现复用
-(instancetype)initWithAge:(int)age andName:(NSString *)name{
    self = [super init];//初始化父类，把返回值返回子类
    if (self) {//判断是否初始化成功
        self.age= age;
        self.name = name;
    }
    
    return self;}
-(NSString *)description{
    return [NSString stringWithFormat:@"age=%i,name=%@",self.age,self.name];}


@end
