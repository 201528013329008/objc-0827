//
//  Person.h
//  ocday02
//
//  Created by 691 on 2016/10/11.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef struct{
    int year;
    int month;
    int day;}
Date;

typedef enum {Man,Women}Sex;

@interface Person : NSObject

@property(nonatomic ,strong )NSString *name;
@property ( nonatomic,assign) int  age;

@property(nonatomic ,assign) Sex sex;

@property(nonatomic ,assign )Date birthday;
-(void)StudentWithSex:(Sex ) sex;











































-(void)say;
-(void)sayWithName:(NSString *)name;




@end
