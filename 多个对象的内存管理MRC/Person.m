//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/9/5.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"
#import "Room.h"
@implementation Person


//
//-(void)setRoom:(Room *)room{
//    if(_room != room){
//// setter方法的内存管理 －－判断传入的对象和当前对象是否一样，然后release之前对象，然后retain传入新对象
//         //只有房间不同才释放
//        [_room release];
//  
//    _room= [room retain];
//       
//    }
//    }

//-(Room *)room{
//    return _room;}

-(void)dealloc{
    [_room release];
    NSLog(@"%s", __func__);
    [super dealloc];}
@end
