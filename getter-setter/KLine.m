//
//  KLine.m
//  ocday02
//
//  Created by 691 on 16/8/28.
//  Copyright © 2016年 691. All rights reserved.
//

#import "KLine.h"

@implementation KLine
-(void)setMax:(int)max{
    _max = max;
    //set方法也可以监听属性的变化，只有最大或最小发生改变时我才计算平均值
    _average=(_min+_max)/2;
}
-(void)setMin:(int)min{
    _min = min;
    (_min+_max)/2;}

-(void)setAverage:(int)average{
    _average = average;}

-(int)max{
    return _max;}
-(int)min{
    return _min;}
//只有最大值或最小发生改变时 average才会发生变化,所以在这里不要return（_max+_min）/2
-(int)average;{
    
    return _average;}

@end
