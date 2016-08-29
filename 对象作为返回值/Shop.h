//
//  Shop.h
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Gun.h"

@interface Shop : NSObject

+(Gun*)buyGun:(NSNumber*)money;

+(Clip*)buyClip:(NSNumber*)money;


@end
