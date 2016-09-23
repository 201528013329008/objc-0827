//
//  NSString+countWithStr.m
//  ocday02
//
//  Created by 691 on 16/9/9.
//  Copyright © 2016年 691. All rights reserved.
//

#import "NSString+countWithStr.h"

@implementation NSString (countWithStr)
-(int)countWithStr{
  
        int count;
        for (int i=0; i< self.length; ++i ) {
            unichar c = [self characterAtIndex: i ];
            if (c >='0'&&c <'9') {
                count++;
            }
        }
        return count;
        
    }

@end
