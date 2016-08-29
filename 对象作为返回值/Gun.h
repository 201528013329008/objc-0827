//
//  Gun.h
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Clip.h"
@interface Gun : NSObject

{
@public
    Clip *clip;
}
  -(void)shoot :(Clip*)cli : (int)count;

@end
