//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/8/30.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"

@implementation Person
{
//    写在实现文件中的定义，为私有变量 外界无法访问的 区别于private
//    只写在实现文件里的方法（没有声明），外界也不能直接调用
    int _kk;}
-(void)setAge:(int)age{
    if(age<0){
        age =0;
    }else{
    
        _age = age;}}
//-(void)setName:(NSString*)name{
//    _name = name;}

-(int)age{
   return _age-1;}
//-(NSString*)name{
//    return  _name;}
-(void)test{
    NSLog(@"haha%i", _age);}

@end
