//
//  main.m
//  ocday02
//
//  Created by 691 on 16/8/24.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

//创建学生类，属性name birthday，行为say（name birthday）
typedef struct{
    int year;
    int month;
    int day;} Date;
@interface Student : NSObject
{@public
    NSString* _name;
    Date _birthday;}
//对象方法
-(void)say;
@end
@implementation Student
-(void)say{
    
    NSLog(@"name=%@,year=%i,month= %i,day= %i",_name,_birthday.year,_birthday.month,_birthday.day);}
@end
int main(int argc, const char * argv[]) {
    //    创建对象学生
    Student* stu= [Student new];
    
    stu ->_name= @"ljy";
    //    结构体只能在定义的时候初始化
    //    系统不清楚他是数组还是结构体
    //    将结构体的所有属性都copy过来
    stu ->_birthday=(Date){1993,3,6};
    //  或者  stu->_birthday.year= 1993;
    //    stu->_birthday.day= 6;
    //    stu->_birthday.month= 3;
    //   或者 Date d= {1993 ,3,6};
    //    stu->_birthday= d;
    [stu say];
    
    
    return 0;
}
