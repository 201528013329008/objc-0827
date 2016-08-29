//
//  Solder.h
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"
@interface Solder : NSObject
{
@public
    NSString*_name;
    double _height;
    double _weight;
}
//增加人开枪的方法
-(void)fire :(Gun*)gun clip:(Clip*)clip;
@end
