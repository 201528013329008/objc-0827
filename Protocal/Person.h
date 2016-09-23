//
//  Person.h
//  ocday02
//
//  Created by 691 on 16/9/13.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Wife.h"
@interface Person : NSObject
@property ( nonatomic, strong)Wife <WifeCondition>* wife;
-(void)show;
@end
