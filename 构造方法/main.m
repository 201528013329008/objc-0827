//
//  main.m
//  构造方法
//
//  Created by 691 on 16/8/31.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Student.h"

int main(int argc, const char * argv[]) {
   
//    Person *p1 = [[Person alloc] init];
//    id p3=[p1 initWithAge:30 andName:@"pppp"];
//    NSLog(@"%@",p3);
    Person *p1 = [[Person alloc] initWithAge:30 andName:@"ppppp"];
     NSLog(@"%@",p1);
    //或者 Person *p1 = [[Person alloc] init];
    // id p3=[p1 initWithAge:30 andName:@"pppp"];
    // NSLog(@"%@",p3);
    
    Student *p2= [[Student alloc] initWithAge:50 andName:@"oooooo" andNo:@"llllll"];
    NSLog(@"%@",p2);
//    只能用id，不能用Student，不能静态分配给一个临时的变量（后面的方法不是new）
//    有返回值的方法调用时最好赋值给一个指针类型的变量
   
//    NSString*str = [[Person alloc] init];
//    NSUInteger length = [str length];
//    NSLog(@"length= %lu",length);
//以前在xcode之前版本中 -(id)init,  编译时不会报错，但在运行时报错，现在改为了instancetype 在编译时就会警告（init返回的对象地址赋值给了其他对象）
//instancetype在编译时知道真实类型
//    id可以用来定义变量，可以作为返回值，可以作为行参；instancetype只能作为返回值
//   以后定义构造方法是要用instancetype，编译时尽快发现错误
    return 0;
    
}
