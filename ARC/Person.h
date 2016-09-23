//
//  Person.h
//  ocday02
//
//  Created by 691 on 16/9/7.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
//strong相当于mrc众的retain
@property ( nonatomic,assign) int age;
+(instancetype)person;
-(void)dealloc;
@end
