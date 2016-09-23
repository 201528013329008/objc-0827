//
//  Clip.h
//  ocday02
//
//  Created by 691 on 16/8/25.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Clip : NSObject
{
//@public
    //如果取消@public，外界不能直接访问，但是还是可以在本类的对象方法中直接当问
//    int _bullet;//子弹
//    int _size;
    //由于我们经常需要定义一些方法来操作成员变量，为了在起名字给方法更容易，以后就用getter setter
// setter:   setter一定是对象方法
//              一定没有返回值
//             set开头，后面跟上成员变量的名称去掉下划线，首字母大写
//             一定有参数，参数类型一定和成员变量的类型一致，并且参数的名称就   是去掉下划线的成员变量
}
//-(void)setBullet:(int)count;
////-(void)getBullet: (int)count;
@property int bullet;
@property int size;
//-(int)bullet;

/*对象方法getter，获取成员变量的值一定有返回值一定没有参数，方法名去下划线
 
 */
//-(int)size;
@end
