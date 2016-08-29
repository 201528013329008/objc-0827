//
//  Iphone.m
//  ocday02
//
//  Created by 691 on 16/8/29.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Iphone.h"

@implementation Iphone
-(void)carameWithFlashlightStatus:(FlashlightStatus)status{
//    if (status == FlashlightStatusOpen) {
//        NSLog(@"pai");
//        [self closeFlashlight];
//    }else{
//        [self openFlashlight];
//        NSLog(@"pai");
//       
//    }
     NSLog(@"此句话是对负类的扩展，接下来我还想调用原来的方法");
    [super carameWithFlashlightStatus:status];
    //super直达父类
}




//继承之后写到了phone
//self 为当前调用该对象方法的对象，或调用该类方法的类，两种方法不可以交叉调用
//使用方法时现在本类寻找，然后在往上 区别于super（直接到父类中去）.

//-(void)carameWithFlashlightStatus:(FlashlightStatus)status{
//    if (status == FlashlightStatusOpen) {
//        NSLog(@"pai");
//        [self closeFlashlight];
//    }else{
//        [self openFlashlight];
//    NSLog(@"pai");
//    }
//}
//-(void)openFlashlight{
//    NSLog(@"open flash");}
//-(void)closeFlashlight{
//    NSLog(@"close flash");}
//-(void)setCpu:(int)cpu{
//    _cpu = cpu;
//}
//-(int)cpu{
//    return _cpu;
//}
////-(void)test{
////    NSLog(@"cpu%i",self.cpu);}
//-(void)test:(int)cpu{
//    //self 也可以用于区分属性和局部变量（行参），如果定义了set方法就可以用点方法，不能出现在main
//    self.cpu = cpu;
//    NSLog(@"cpu%i",self.cpu);}
//


@end
