//
//  main.m
//  对象作为方法传递
//
//  Created by 691 on 16/8/24.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
/*
 士兵
 名称：士兵（Solder）
 属性：name身高height体重weight
 行为，打枪fire，说话callphone
 
 枪
 名称：枪(Gun)
 属性：型号model，弹夹clip
 行为：上弹夹
 
 弹夹
 名称 弹夹(Clip)
 属性 ，子弹Bullet
 行为，上子弹addBullet
 */
/////////////////////////////枪类


#pragma mark  - 弹夹
@interface Clip : NSObject
{
@public
    int _bullet;//子弹
    
}
-(void)addBullet;
@end
@implementation Clip

-(void)addBullet{
    _bullet+=10;}

@end

#pragma mark  - 枪

@interface Gun : NSObject
{
@public
    Clip *clip;
}
//增加枪打出子弹的方法
//-(void)shoot;
-(void)shoot:(Clip*)cli;
@end

@implementation Gun
//-(void)shoot{
//    if (_bullet>0){
//         _bullet--;
//        NSLog(@"射出子弹,剩余%i发子弹", _bullet);
//    }else{
//        NSLog(@"请买子弹");}
//}
-(void)shoot:(Clip*)cli{
    if(cli!=nil){
        if(cli->_bullet>0)
        {
             cli ->_bullet--;
            NSLog(@"打了一枪剩余%i",cli->_bullet);
            }
        else{
            NSLog(@"meizidan");}
    }else{
        NSLog(@"meidanjia");}
}
@end
#pragma mark  - 士兵

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

@implementation Solder

-(void)fire :(Gun*)gun clip:(Clip*)cl{
    if (gun!=nil&&cl!=nil) {
        NSLog(@"人开枪");
        [gun shoot:cl];//只要保持两个行参一致即可，随便名字。cl这个位置会拿到clip这个对象
    }
   }
@end
#pragma mark - 程序入口
int main(int argc, const char * argv[]) {

    Solder* solder = [Solder new];//create solder object
    solder ->_name= @"ljy";
    solder->_height= 1.9;
    solder->_weight=100.0;//在这里可以初始化，声明的时候不可以。

    Gun *gun = [Gun new];//create gun object
    Clip  *clip = [Clip new];//create clip object
    [clip addBullet];             //加满子弹
    [solder fire:gun clip: clip];//    让士兵开枪，让对象作为方法的参数进行传递
    return 0;
}
