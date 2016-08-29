//
//  Phone.h
//  ocday02
//
//  Created by 691 on 16/8/29.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    FlashlightStatusOpen,
    FlashlightStatusClose
    
}FlashlightStatus;
@interface Phone : NSObject
{int _cpu;}
-(void)carameWithFlashlightStatus:(FlashlightStatus)status;
-(void)openFlashlight;
-(void)closeFlashlight;

-(void)setCpu:(int)cpu;
-(int)cpu;
-(void)test:(int)cpu;


@end
