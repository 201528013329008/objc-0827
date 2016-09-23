//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/9/2.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"

@implementation Person

-(void)makeObject:(id)obj andSel:(SEL)sel{
    [obj performSelector:sel];
}
-(void)sendMessageWithNumber:(NSString *)number andContent:(NSString *)content{
    NSLog(@"%@,%@",number,content);}
@end

