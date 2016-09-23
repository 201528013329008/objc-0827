//
//  Person+Sport.h
//  ocday02
//
//  Created by 691 on 16/9/9.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Person.h"

@interface Person (Sport)
//只能给原有类添加方法不能添加属性,分类中的@property只会实现getset方法的声明，不会有真正的方法
//分类中可以访问原有类中属性
//如果分类中与原有类有同名的方法那么，先调用分类中的方法，相当于重写方法，如果多个分类中有同名方法，则会编译最后一个重写的方法
-(void)playfootbool;
@end
