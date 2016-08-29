//
//  Solder.m
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Solder.h"

@implementation Solder
-(void)fire :(Gun*)gun clip:(Clip*)cl{
    if (gun!=nil&&cl!=nil) {
        NSLog(@"人开枪");
//        [gun shoot:cl ];//只要保持两个行参一致即可，随便名字。cl这个位置会拿到clip这个对象
        [cl setBullet:30];
        
        [gun shoot:cl :[cl bullet]];
       
    }
}

@end
