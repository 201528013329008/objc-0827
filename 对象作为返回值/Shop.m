//
//  Shop.m
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Shop.h"

@implementation Shop
//在商店间接创建对象gun ，clip
+(Gun*)buyGun:(NSNumber*)money{//可以用类方法
    Gun *gun = [Gun new];//堆中不会自动释放
    return gun;
}
+(Clip*)buyClip:(NSNumber*)money{
    Clip *clip = [Clip new];

//    [clip addBullet:10];//抢中自带子弹
    return clip;
}

@end
