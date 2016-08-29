//
//  main.m
//  self方法传递
//
//  Created by 691 on 16/8/29.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"
#import "Android.h"
int main(int argc, const char * argv[]) {
    Iphone *p = [Iphone new];
    [p carameWithFlashlightStatus:FlashlightStatusClose];
//    p.cpu = 2;
    [p test:4];
    
    
//    Android *pp = [Android new];
//    [pp carameWithFlashlightStatus:FlashlightStatusClose];
//    //    p.cpu = 2;
//    [pp test:4];
    
    return 0;
}
