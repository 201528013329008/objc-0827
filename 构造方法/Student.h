//
//  Student.h
//  ocday02
//
//  Created by 691 on 16/8/31.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
@interface Student : Person
@property NSString* no;
-(instancetype)initWithAge:(int)age andName:(NSString *)name andNo:(NSString*)no;


@end
