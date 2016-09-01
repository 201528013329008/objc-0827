//
//  Student.m
//  ocday02
//
//  Created by 691 on 16/8/30.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Student.h"
#import "Person.h"
@implementation Student
-(void)test{
    NSLog(@"gg%i",self.age);}

-(NSString *)description{
    NSString*str = [NSString stringWithFormat:@"age%i,name%@",self.age,_name];
    
//    NSLog(@"%@",self);这样写的话会导致死循环，因为一直调用description
    return str;
}

@end
