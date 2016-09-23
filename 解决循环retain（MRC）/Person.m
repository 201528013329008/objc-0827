//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/9/6.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"
#import "Dog.h"
@implementation Person
-(void)dealloc{
    
    [_dog release];
    NSLog(@"%s",__func__);
    [super dealloc];
}
@end
