//
//  Person.h
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Iphone.h"

@interface Person : NSObject
{
@public
    int _age;
    NSString*_name;}
-(void)say;

-(void)signal:(Iphone*)phone;
@end
