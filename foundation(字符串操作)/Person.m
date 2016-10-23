//
//  Person.m
//  ocday02
//
//  Created by 691 on 2016/10/11.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)say{
    NSLog(@"jiayou");}
-(void)sayWithName:(NSString *)name{
    NSLog(@"%@ jiayou",name);}
-(NSString *)description{
    return [NSString stringWithFormat:@"age = %i",self.age];
}

-(void)StudentWithSex:(Sex)sex{

    switch (sex) {
        case 0:
            NSLog(@"man");
            break;
                  case 1:
            NSLog(@"woman");
                        break;
    }
}


@end
