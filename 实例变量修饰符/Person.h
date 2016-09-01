//
//  Person.h
//  ocday02
//
//  Created by 691 on 16/8/30.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    
/*   都可以在本类中访问（被修饰的成员变量）
    @public
 
            可以在其他类中访问
            可以在子类中访问（被修饰的成员变量）

    @private
 
             不可以在其他类中访问
             不可以在子类中访问
    @protected
 
             不可以在其他类中访问
                 可以在子类中访问
    @package
              如果在其他包中访问就是private
             如果在当前代码所在的包中 访问就是public
 
 默认是所有属性protected，，
 修饰符的作用域是到下一个修饰符
    */
    @public
   
    int _age;
    double _height;
    double _weight;
    NSString*_name;
    NSString*_tel;
    NSString*_email;
    BOOL _married;
    
}
@property int age;//代替-(void)setAge:(int)age  注意属性中没有下划线
//系统自动为我们生成的成员变量是私有的，外界不能访问，想当于在.m 文件中写的.不能在其他文件中 出现_age
// 重写getter后  property只会生成setter。。。getter setter方法都重写后，系统就不会自动为我们生成_age私有变量，因为方法是给外界使用的
-(void)setAge:(int)age;
-(int)age;
@property(readwrite) NSString* name;//默认就是可读写，即生成了getset
@property(getter=isMarried) BOOL married;
//代替下面两句
//-(void)setName:(NSString*)name;
//
//-(NSString*)name;


-(void)test;
@end
