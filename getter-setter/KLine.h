//
//  KLine.h
//  ocday02
//
//  Created by 691 on 16/8/28.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KLine : NSObject
{
    int _max;
int _min;
int _average;
}

-(void)setMax:(int)max;
-(void)setMin:(int)min;
-(void)setAverage:(int)average;

//避免@public
/*setter 对象方法，没有返回值，有参数去下划线首字母大写
 getter 没有参数，有返回值，返回值类型和属性类型一样  方法名称就是属性名称去下划线
 如果某一种属性只设置了getter，称为只读属性,只有setter 只写属性，都有为可读写属性
 如果属性没有设置getter stter，我们称为私有属性
 */
-(int)max;
-(int)min;

-(int)average;
@end
