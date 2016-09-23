//
//  Person.h
//  ocday02
//
//  Created by 691 on 16/9/2.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property int age;
-(void)makeObject:(id)obj andSel:(SEL) sel;
//调入传入方法
-(void)sendMessageWithNumber:(NSString*)number andContent:(NSString*)content;
@end
