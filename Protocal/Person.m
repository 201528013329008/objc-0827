//
//  Person.m
//  ocday02
//
//  Created by 691 on 16/9/13.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"

@implementation Person
-(void)show{
    //虽然在接受某一个对象的时候，对对象进行类型限定（必须实现方法），不意味着真正实现
//    进行一次安全认证 ，看是否实现了方法
    if ([self.wife respondsToSelector:@selector(cooking)]) {
        [self.wife cooking];
    }
    if ([self.wife respondsToSelector:@selector(washing)]) {
        [self.wife washing];
    }
    if ([self.wife respondsToSelector:@selector(job)]) {
        [self.wife job];
    }
}
@end
