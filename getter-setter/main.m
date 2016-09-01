//
//  main.m
//  getter-setter
//
//  Created by 691 on 16/8/28.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KLine.h"
/*设计一个k线类，可以设置最高价格最低价格平均价格
 */
int main(int argc, const char * argv[]) {
    KLine *line = [KLine new];
//    [line setMax:200];
//    [line setMin:100];
    
    //点语法在等号左边右边分别代表的是set getter，，编译器会自动转换（调用）setter getter方法，点语法是由于有了get set才有的
    //点语法一般给成员变量使用
    
    line.max= 200;
    line.min = 100;
    NSLog(@"zuida%i,zuixiao%i,pingjun %i", line.max,line.min,line.average);
    
    
    
    return 0;
}
