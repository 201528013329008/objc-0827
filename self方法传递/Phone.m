//
//  Phone.m
//  ocday02
//
//  Created by 691 on 16/8/29.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Phone.h"

@implementation Phone
-(void)carameWithFlashlightStatus:(FlashlightStatus)status{
    if (status == FlashlightStatusOpen) {
        NSLog(@"pai");
        [self closeFlashlight];
    }else{
        [self openFlashlight];
        NSLog(@"pai");
    }
}
-(void)openFlashlight{
    NSLog(@"open flash");}
-(void)closeFlashlight{
    NSLog(@"close flash");}
-(void)setCpu:(int)cpu{
    _cpu = cpu;
}
-(int)cpu{
    return _cpu;
}
//-(void)test{
//    NSLog(@"cpu%i",self.cpu);}
-(void)test:(int)cpu{
    //self 也可以用于区分属性和局部变量（行参），如果定义了set方法就可以用点方法，不能出现在main
    self.cpu = cpu;
    NSLog(@"cpu%i",self.cpu);}


@end
