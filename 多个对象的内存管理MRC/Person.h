//
//  Person.h
//  ocday02
//
//  Created by 691 on 16/9/5.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

//#import "Room.h"不能相互copy
///会使编译器变慢，如果存在多个类的话，类内部不停的改变，会不停的导入

@class Room;//需要这个类作为数据类型时 要@class,，,不会影响间接导入的类（A导入B，B导入C）或循环导入，一般来说，@class是放在interface中的，只是为了在interface中引用这个类，把这个类作为一个类型来用的。 在实现这个接口的实现类中，如果需要引用这个类的实体变量或者方法之类的，还是需要import在@class中声明的类进来，以后存在相互导入的时候就在.h文件@class。在m文件中import，提高编译器的效率
@interface Person : NSObject

//{Room *_room;}
@property ( nonatomic, retain)Room* room;//生成有set内存管理功能的getter setter方法
//只要对象类型都要有＊  retain
//非对象类型为assign，数据类型加变量名即可
//nonatomic 多线程一般要写这个，pc上面atomic比较多
//1。相同类型的property修饰符不能同时使用 getset除外
//2，不同类型的修饰符可以结合使用
//3/nonatomic一定要写
//-(void)setRoom:( Room*)room;
//-(Room*)room;
-(void)dealloc;
@end
