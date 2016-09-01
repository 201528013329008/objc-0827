//
//  Person.h
//  ocday02
//
//  Created by 691 on 16/8/31.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{int _age;}
@property int age;
@property NSString*name;

-(instancetype)initWithAge:(int)age andName:(NSString*)name;

@end
