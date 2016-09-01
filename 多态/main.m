//
//  main.m
//  多态
//
//  Created by 691 on 16/8/30.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Animal.h"
#import "Dog.h"
#import "Cat.h"
int main(int argc, const char * argv[]) {
    
    Animal *d= [ [Dog alloc] init ];
    //方法重写后，子类就不能单纯的调用父类的方法,无意义的方法重写之外［super eat］，这样的话严格意义不叫重写，，重写过程中如果加上［super eat］，这样的话只能说是在调用本类方法的过程调用父类
    
    
    
//    动态类型
//    编译时先判断当前类型Animal中有没有改方法
    [d eat];
//    运行时看真实类型
//    如果子类中修改过该方法， 那么运行时看这个子类，，如果子类中有一个父类没有的方法，那么要想调用它，必须先转换为当前类型，不然编译不过，因为父类编译不了。
    
    
    
//    Dog *dd =[Dog new];
//    [dd eat];
    
    //要想调用子类特有的方法（不是扩展，是一种新方法，不然会编译失败），就必须先转换为子类的类型。。。不然的话用动态数据类型id，另外也可以调用私有方法。。不过也有可能调用不属于自己的方法
    //id 常用在多态，避免调用子类特有方法时的类型强制转换，可直接调用子类中的方法
    
    id  ee =[[Dog alloc] init];
    //id 是万能指针。
    [ee eat];
    
    [ee  drink];
    
 
    
    
    return 0;
}
