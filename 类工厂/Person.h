//
//  Person.h
//  ocday02
//
//  Created by 691 on 16/9/1.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;

+(instancetype)person;
+(instancetype)personWithAge:(int)age;
@end
