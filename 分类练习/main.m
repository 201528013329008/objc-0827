//
//  main.m
//  分类练习
//
//  Created by 691 on 16/9/9.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+countWithStr.h"
int main(int argc, const char * argv[]) {

  
//   int count=[NSString countWithStr:str];//count接收返回值,改为对象方法后不用导入参数了  self完事
    NSString*str = @"12345abcde";
   
    int count = [str countWithStr];
    
    NSLog(@"count=%i",count);
    
    return 0;
}
