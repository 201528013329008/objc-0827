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
//- ( NSString *)description{
//    NSString* str = [NSString stringWithFormat:@"age=%i,name=%@",self.age,self.name];
//    return str;}
-(instancetype)initWithAge:(int)age andName:(NSString *)name andNo:(NSString *)no{
    if(self = [super initWithAge:age andName:name])
    {self.no = no;}
               return self;}
//    父类定义的变量最好让父类操作，这样的话代码复用高，扩展的更清晰,事实上和下面的效果一样，根据不同的场景自己定义

//-(instancetype)initWithAge:(int)age andName:(NSString *)name andNo:(NSString *)no{
//    if (self = [super init]) {
//        self.age = age;
//        self.name= name;
//        self.no = no;
//    }
//    return self;}
-(NSString *)description{
    return [NSString stringWithFormat:@"age =%i,name=%@,no=%@",self.age,self.name,self.no];}
@end
