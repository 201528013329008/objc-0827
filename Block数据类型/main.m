//
//  main.m
//  Block数据类型
//
//  Created by 691 on 16/9/9.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cal.h"


void goToWork(void (^workBlock)()) {
    
    NSLog(@"chifan");
    workBlock();//前后语句复用率比较高的时候用block
    NSLog(@"shuijiao");}

void goToWorkInDay1(int i){//主方法
    goToWork(^{NSLog(@"周%i上班",i );});
             }


int main(int argc, const char * argv[]) {
//    如果想在block中修改外界变量的值，需要加上__block修饰一下类型，就有了地址传递
//不加__block 是值传递

    __block int e=10;
    void(^myblock)() = ^{
        e= 40;
        NSLog(@"%i",e);};
    myblock();
    //    默认情况下，block存在栈中，如果对他进行copy操作，将会转移到堆中。如果block在栈中，block中访问了外界的对象，那么不会对对象进行retain操作，但如果block在堆中，block中访问了外界的对象，那么对外界的对象进行一次retain（mrc中面试的时候）
     __block Cal *c = [[Cal alloc]init];//在mrc中要用到__block,这样的话即使在堆中也不会retain
 
    void(^testBlock)()= ^{
        NSLog(@"retainCount=%lu",[c  retainCount]);};
      testBlock();
    Block_copy(testBlock);
    testBlock();
//    goToWorkInDay1(2);
    
//    Block封装了一段代码，可以在任何时候执行
//    Block可以作为函数参数或者函数的返回值，而本身又可以带输入参数或返回值
//    block，在多线程、异步任务，集合遍历，集合排序、动画专场用得多
//    */
    
    //block用来保存一段代码
    //block的标志 :^
    //block跟函数指针很像
//    参数，返回值 可以有无
    
    //定义block变量没有返回值没有参数
//    void(^myblock)() = ^ {
//        NSLog(@"---------");
//        NSLog(@"---------");
//    };
//    //利用block变量调用block内部的代码
//    myblock(); //运行block
//    
//    //定以一个block返回值为int函数的参数为int int
//   
//    
//    int(^sumblock)(int ,int ) = ^(int a,int b){
//        return a + b;
//    };
//    int sum = sumblock(10,11);
//    NSLog(@"sum = %i",sum);
//
//    //利用typedef定义block来创建一个block变量
//    typedef int (^SumP)(int,int);//用typedef定义一个block类型
//    SumP sumblock1 = ^(int a,int b){
//        return a - b;
//    };
//    int d = sumblock1(10,5);
//    NSLog(@"d = %i",d);
    
  

        return 0;
}
    
    
    

