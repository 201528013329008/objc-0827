//
//  Student.m
//  ocday02
//
//  Created by 691 on 16/8/31.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Student.h"

@implementation Student
//id在编译的时候不能判断对象的真实类型，instancetype可以，所以当

//instancetype区别于id,，，，将错误发现有运行时到编译时
//-(instancetype)init{
//    self = [super init];//初始化父类
//    if (self) {
//        _no=10;
//    }
//    return self;}
- ( NSString *)description{
    NSString* str = [NSString stringWithFormat:@"age=%i,name=%@",self.age,self.name];
    return str;}
@end
