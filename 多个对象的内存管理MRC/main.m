//
//  main.m
//  多个对象的内存管理MRC
//
//  Created by 691 on 16/9/5.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Room.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *p = [[Person alloc]init];
        Room *r = [[Room alloc]init];
        r.no=99;
        p.room = r;
//         [r release];
        //只有房间不同才释放
        NSLog(@"%lu",[r retainCount]);
        
        Room *r2 = [[Room alloc]init];
        r2.no= 444;
        p.room= r2;
        [r2 release];
        
        
        [p release];
         NSLog(@"%lu",[p retainCount]);
    }
    return 0;
}
