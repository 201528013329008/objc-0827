//
//  Gun.m
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import "Gun.h"

@implementation Gun
-(void)shoot :(Clip*)cli : (int)count{
   
    if(cli!=nil){
        if(count>0)
        {
            --count;
            NSLog(@"打了一枪剩余%i",count);
        }
        else{
            NSLog(@"meizidan");}
    }else{
        NSLog(@"meidanjia");}
    
 
}
@end
