//
//  Student.m
//  ocday02
//
//  Created by 691 on 16/9/13.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Student.h"
#import "LinkHome.h"
//#import "StudentProtocal.h"x
@implementation Student
-(void)findHouse{
    NSLog(@"学生想找房子");
//          通知代理帮他找
          if([self.delegate respondsToSelector:@selector(helpStudentFind:)])
       
              [ self.delegate helpStudentFind:self];
              }
@end
