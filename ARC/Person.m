//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/9/7.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"

@implementation Person
+(instancetype)person{
    return [[Person alloc]init];}
-(void)dealloc{
    NSLog(@"%s",__func__);

}
@end
