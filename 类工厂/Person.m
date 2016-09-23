//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/9/1.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"

@implementation Person
//+(instancetype)Person{
//    Person *p = [Person alloc];
//    Person *p1 = [p init];
//    return p1;
//}
+(instancetype)person{
    return [[self alloc] init];}
//一定不要用类名代替self，谁调用当前类方法，self就是那个类
+(instancetype)personWithAge:(int)age{
    Person *p = [[self alloc] init];//父类指针指向子类对象
    p.age = age;
    return p;}
-(NSString *)description{
    return [NSString stringWithFormat:@"age = %i",self.age];}
@end
