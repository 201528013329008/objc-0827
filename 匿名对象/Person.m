//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)say{
    NSLog(@"%i岁,叫%@", _age, _name);
}
-(void)signal:(Iphone*)phone{
    [phone callWithNumber:@1199];}
@end
