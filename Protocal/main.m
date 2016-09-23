//
//  main.m
//  Protocal
//
//  Created by 691 on 16/9/13.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Wife.h"
#import "WifeCondition.h"
//协议的应用一类型限制

int main(int argc, const char * argv[]) {
    Person *p = [[Person alloc]init];
    //将协议写在类型的右边，明确的标注如果想给该变量赋值
    Wife *w = [[Wife alloc ]init];
    p.wife = w;
      return 0;
}
