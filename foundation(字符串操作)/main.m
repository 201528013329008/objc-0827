//
//  main.m
//  foundation()
//
//  Created by 691 on 16/9/19.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
//   NSString *s = @"ljy";
//    NSLog(@"%@",s);
//    //存储在常量区，只要内容一致，那么多个对象指向同一块存储区
//    
//    NSString*str1 = [[NSString alloc ] initWithFormat:@"lll"];
//    NSLog(@"%@",str1);
////    存储在堆，只要内容一致，（ios平台）那么多个对象指向同一块存储区，xcode7之前没有进行优化，指向不同的存储区
//    NSString*str3 = [NSString stringWithFormat:@"str2222"];
//    NSLog(@"%@",str3);
//    NSString*str2 = [[NSString alloc]initWithString:@"uuu"];
////    相当于  NSString*str2 =@"uuu"
////    initwithstring'相当于浅copy
//    NSLog(@"%@",str2);
//    但凡见到xxxoffile要传绝对路径
   
//    1，创建url，协议头＋主机地址＋文件路径
//    主机地址可以省略，但／不能省略,
//    先定义路径path，然后将path传到nsurl的urlWithString或fileURLWithPath方法里形成一个url，然后再传到nsstring的stringWithContentOfURL
    
//    NSString*path3 = @"file://172.16.97.33/Users/a691/Desktop/6999.txt";
//    NSURL *url3 = [NSURL URLWithString:path3];
//    NSString *str3 = [NSString stringWithContentsOfURL:url3 encoding:NSUTF8StringEncoding error:nil];
//    NSLog(@"%@",str3);
    
    
    //如果是NSURL的fileUrlWithPath方法，那么系统会自动为我们创建文件头，所以不用写file://，，fileURLWithPath可以处理中文，建议以后用fileWIthpath，如果不用的话 那么需要百分号编码
    //    path4 = [path4 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    //如果访问本机的资源 ，建议用nsurl的fileUrlWithString，这 样的话可以省略文件头还有支持中文
    
    NSString *path4 =@"/Users/a691/Desktop/哈哈.txt";
//    path4 = [path4 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    NSURL *url4 = [NSURL fileURLWithPath :path4];
    
    NSString*str4 = [NSString stringWithContentsOfURL:url4 encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%@",str4);
    
//    NSError *error = nil;
//    //读
//    NSString*path = @"/Users/a691/Desktop/6999.txt";
//    NSString *str = [NSString stringWithContentsOfFile:path encoding:NSUTF8StringEncoding error:nil];
//    if (error ==nil) {
//        NSLog(@"str= %@",str);
//    }else {
//        NSLog(@"error = %@",[error localizedDescription]);}
//   写，多次写入会完全覆盖，添加的话会有新的方法
    NSString* sstr = @"liujingyi哈哈ll而我 v691";
    NSString*path2 =@"/Users/a691/Desktop/哈哈.txt";
//     path2 = [path2 stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
  NSURL *url2= [NSURL fileURLWithPath:path2];
    //如果用urlWithString不支持中文
    BOOL flag = [sstr writeToURL:url2 atomically:YES encoding:NSUTF8StringEncoding error:nil];
    NSLog(@"%i", flag);
//    
//    NSString *str5= @"pp";
//    NSString*str6 = @"op";
//    BOOL a = [str5 isEqualToString:str6];//比较内容
//    
//    int b= (str6==str5);//地址比较
//    NSLog(@"%i",b);
//    NSLog(@"%i",a);
//    [str5 compare:str6];//固定的取值enum、NSOrdererascending NSOrderedSame，NSOrderedDescending
   
//    switch ([str5 compare:str6]) {// 如果忽略大小写用caseInsensitiveCompare
//            
//        case NSOrderedAscending:
//            NSLog(@"<");
//            break;
//        case NSOrderedSame:
//            NSLog(@"=");
//            break;
//        case NSOrderedDescending:
//            NSLog(@">");
//            break;
//            
//        default:
//            break;
//    }
    //校验是否存在含有此前缀或后缀
    NSString* str7= @"fff.gif";
    if ([str7 hasSuffix:@".gif"]) {//前缀是prefix
        NSLog(@"是动态图");
    }
//    string查找定位搜索
    NSRange range = [str7 rangeOfString:@".giff"];
    if (range.location==NSNotFound) {
        NSLog(@"notfund");
    }
    NSLog(@"location = %lu,length = %lu", range.location,range.length);
  //subString通用1
    
    
    NSString* str8 =@"<haha>12345678</haha>";
    
    NSUInteger location = [str8 rangeOfString:@">"].location+1;//定位开始截取的位置
    
    NSString* newStr=[str8 substringFromIndex:location];//传入位置
    
    location = [newStr rangeOfString:@"<"].location;//改变了指针的指向
    
    newStr =[newStr substringToIndex:location];//将新串从此位置往后截掉
    
    NSLog(@"%@",newStr);
    
     //subString通用2
    
    
    
    NSUInteger locations= [str8 rangeOfString:@">"].location+1;
    
    NSUInteger lengths = [str8 rangeOfString:@">" options:NSBackwardsSearch].location+1-locations;
    
    NSRange rangew = NSMakeRange(locations, lengths);
    NSString *new3Str = [str8 substringWithRange:rangew];
//    NSLog(@"%lu.%lu",locations,lengths);
    NSLog(@"%@",new3Str);
    
//   个数易查的情形
    
    NSString* newnew = [str8 substringFromIndex:6];
    
    newnew = [ newnew substringToIndex:8 ];
    NSLog(@"%@",newnew);
    
    
//    NSArray *array = @[@"0",@"1",@"2"];
//    NSLog(@"%@",array[0]);
    //判断位置
    NSString* str11 = @"abcdefa";
    
    NSRange range11 = [str11 rangeOfString:@"a" options:NSBackwardsSearch];
    
    NSLog(@"%lu",range11.location);// 无符号型长整型整数
    
    //string 替换stringByReplacingOccurrencesOfString:@"//" withString:@""，替换为后面的
    NSString* str12 = @"http://        baidu.com      ";
    NSString *newStr12 = [str12 stringByReplacingOccurrencesOfString:@" " withString:@""];\
    NSString*n = [newStr12 stringByReplacingOccurrencesOfString:@"//" withString:@""];
    NSLog(@"newStr = %@",newStr12);
    NSLog(@"n = %@",n );
    
    //string 替换字符串首尾部分的trim削剪
    NSString* str13 = @"..HTTP://baiLLLdu.comllllLLLLlll";
    NSCharacterSet *set = [NSCharacterSet punctuationCharacterSet];
                    
   NSString*newStr13 = [str13  stringByTrimmingCharactersInSet:set   ];
    NSLog(@"%@",newStr13);   
    
  
    
  //从后面的某点截去
    NSString* str14 =@"<haha>12345678.</haha>";
    
    NSUInteger location14 = [str14 rangeOfString:@"." options:NSBackwardsSearch].location+1;//定位开始截取的位置
    
   NSString* newStr14=[str14 substringFromIndex:location14];//传入位置
   
    NSLog(@"%@",newStr14);
    
    
//    string path
    NSString*str24 = @"/Users/a691/Desktop/哈哈.txt";
    BOOL ab= [str24 isAbsolutePath];
    NSLog(@"%i",ab);
    
//    并没有真实的操作文件
    

//    获取文件目录的最后一个目录（相当于从后面找／（rangeOfString:@"\" options:NSBackwardsSearch）然后substringFromIndex）
    
    NSString *newStr24 =[str24 lastPathComponent];
    NSLog(@"%@",newStr24);
    
//    删除最后一个目录
    NSString *newStr244 = [str24 stringByDeletingLastPathComponent];

    NSLog(@"%@",newStr244);
    
//    给文件添加一个目录
    NSString *newStr2444 = [str24 stringByAppendingString:@"/img"];
    NSLog(@"%@",newStr2444);
    
//    获取路径中文件的扩展名
    NSString* newStr24444 = [str24  pathExtension];
    NSLog(@"%@",newStr24444);
//此外删除一个扩展名
    NSString*newStr25 = [str24 stringByDeletingPathExtension];
    NSLog(@"%@",newStr25);
    
//    给文件路径添加一个扩展名
    NSString *newStr255 = [str24 stringByAppendingPathExtension:@".sss"];
    NSLog(@"%@",newStr255);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
    //    convert string uppercaseString lowercaseString   capitalizedString
    
    NSString *str28 = @"ppp";
    NSString *newStr28 = [str28 uppercaseString];
    NSLog(@"%@",newStr28);
    
    
    NSString *str26 = @"110";
    NSString *str27= @"220";
    float value1 = [str26 floatValue];
    float value2 = [str27 floatValue];
    NSLog( @"%f",value1+value2);
    
//    oc 和c字符串的转换
    char *cstr= "123";
    NSString*ocstr= [NSString stringWithUTF8String:cstr];
    NSLog(@"%@",ocstr);
    
    
    NSString *ocstr1 = @"1311";
    const  char *cstr1 = [ocstr1 UTF8String];
    NSLog(@"%s",cstr1);
    
    
    
    
    
    
    
    
//    不可变是每次赋值都指向新的内存（不可以追加内存空间），创建新对象
    
    NSString *str30 = @"sdgf";
     str30 = @"lll";
//   NSString *newStr30 = [str30 stringByReplacingOccurrencesOfString:@"l" withString:@"p"];
    NSLog(@"%@",str30);
    
    
    
//    NSMutableString *str31= [[NSMutableString alloc]init];创建方式好多
    NSMutableString *str31 = [NSMutableString stringWithFormat:@"d"];
    
    [str31 setString:@"dsf"];
    [str31 appendString:@"ll"];
    
    NSRange range18 = [str31 rangeOfString:@"dsf"];
    [str31 insertString:@"++" atIndex:range18.location];
  
    NSRange range12 = [str31 rangeOfString:@"ds"];
    [str31 replaceCharactersInRange:range12 withString:@"aa"];
    
   NSUInteger countt = [str31 replaceOccurrencesOfString:@"l" withString:@"n" options:0 range:NSMakeRange(0, str31.length)];//返回替换过的字符个数
    
//OC方法一般要求传入一个参数没有*就是枚举类型的，如果不想传入任何值可以传入0，依照系统默认的方式进行处理
//    NSRange range13 = [str31 rangeOfString:@"++"];
//    [str31 deleteCharactersInRange:range13];
    
//    [str31 release];
    
    
    NSLog(@"%@",str31);
    NSLog(@"%lu",countt);
    
    
    
    
//    不可变练习
    NSString* str32 = @"haha";
    [str32 stringByAppendingString:@"-----"];
//   需要将追加的字符串返回才能看到- (NSString *)stringByAppendingString:(NSString *)aString;
    NSLog(@"%@",str32);
    
    
//    可变的话
    NSMutableString *str33 = [[NSMutableString alloc] initWithFormat:@"haha"];
    [str33 appendString:@"----"];//如果调用父类的方法那么不可变 stringByAppendingString，因为父类的方法有返回值  而不可变的类中的方法没有返回值，
    NSLog(@"%@",str33);
    
    
//    练习haha haha haha
    NSMutableString *str35 = [[NSMutableString alloc]initWithFormat:@"haha"];
    for (int i=0; i<2; i++) {
       [str35 appendString:@"g"];
    };
    NSLog(@"%@",str35);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   //／／／／／／／／／／／／／／／不可变数组
    //c中的数组只能存储一种数据类型，OC中可以多种
    
    NSArray *arr = [NSArray arrayWithObjects:@"1",@"2" ,nil];
    NSLog(@"%@",arr);
    
    
    Person*pp = [[Person alloc]init];
    
    NSObject *pppp = [[NSObject alloc]init];
    
    NSArray *arrp = [NSArray arrayWithObjects:pp,pppp,@"3", @"4",nil];

    NSLog(@"%@",arrp);
    NSLog(@"%lu",arrp.count);
    NSLog(@"%@",arrp.description);
    NSLog(@"%@",arrp.lastObject);
    NSLog(@"%@",arrp.reverseObjectEnumerator);
//    NSEnumerator *ns =arrp.sortedArrayHint;
//    NSLog(@"%@",ns );
//    NSArray *a = [[NSArray alloc]init];
//    a =arrp.sortedArrayHint;
//    NSLog(@"%@",a );
    NSLog(@"%@",arrp[0]);
    NSLog(@"%@",[arrp objectAtIndex:2]);
    
    if ([arrp containsObject:@"4"]) {
        NSLog(@"yess");
    }
    
    
    //简写
    
//    NSString *sttttt =@"l";
    NSArray *arrrrrr = @[@"1",@"2",@"3"];
    
    NSLog(@"%@",arrrrrr[1]);
    
    //常规遍历
    for (int i=0; i<arrrrrr.count; i++){
        NSLog(@"arrrrr[%i]= %@",i , arrrrrr[i]);
    }
    
//    增强for，逐个取出敷值给obj
    for (NSObject * obj in arrrrrr) {
        NSLog(@"obj=%@",obj);
    }
    
    
    
    
//    使用OC数组迭代器来遍历
    
//    每取出一个元素，就调用一次block
    
//    每次调用block都会将当前取出的元素和对应的索引传递给我们
    
//    obj就是当前取出的元素，idx就是当前元素对应的索引
    
//    stop用于控制什么时候停止遍历（根据idx）
    
    
    
    [arrrrrr enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        
        NSLog(@"obj=%@,idx= %lu",obj, idx);
        if(idx ==1)
            *stop = YES;
    }];
    
    //可变的数组，自己接收  方便内存管理
    
//    NSMutableArray *arrm = [NSMutableArray ]
    
//     给nsarray中的所有对象（相同类型）发送消息   只能传递一个参数，多个参数只能用遍历
    

    
    
    Person*p1 = [[Person alloc]init];
    Person*p2 = [[Person alloc]init];
    Person*p3 = [[Person alloc]init];
    p1.age =1;
    p2.age =2;
    p3.age =4;
    
    NSArray *selarr = @[p1,p2,p3];
//    让所有对象执行方法
//    1遍历
    [selarr enumerateObjectsUsingBlock:^( Person *obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj say];
    }];
//   2
    [selarr makeObjectsPerformSelector:@selector(say)];

    
//    只能传递一个参数，多个参数需要遍历enumerateObjectsUsingBlock
    [selarr makeObjectsPerformSelector:@selector(sayWithName:) withObject:@"ljy"];
   
    
//     withObject，需要传递的参数
    
//    sort,OC对象，不能是自定义的对象
    NSArray *arr1= @[@10,@2,@9,@11];
    NSArray *newArr= [arr1 sortedArrayUsingSelector:@selector(compare:)];
//    compare：不支持自定义（某属性）的对象
    NSLog(@"%@",newArr);
    
    

//  默认按照升序  二分法
    //不可变的数组需要找对象进行接收
//    opts 为0或1 是指定排序的某个条件（是否并发和稳定）
  NSArray *newSel =  [selarr sortedArrayWithOptions:NSSortStable usingComparator:^NSComparisonResult(Person *obj1, Person  *obj2) {// 每次调用该block 都会选出两个元素进行比较
      
        return obj1.age> obj2.age ;
        
    }];
    
    NSLog(@"%@",newSel);
    
    
    
    
    
    
    
    
    
    NSArray *array = [NSArray arrayWithObjects:@"123",@"21",@"33",@"69",@"108",@"256", nil];
    NSArray *resultArray = [array sortedArrayWithOptions:NSSortConcurrent usingComparator:^NSComparisonResult(id obj1, id obj2) {
        int nu1 = [obj1 intValue];
        int nu2 = [obj2 intValue];
    
////        if (nu1 > nu2) {
////            return NSOrderedDescending;
////        }else if (nu1 == nu2){
////            return NSOrderedSame;
////        }else{
////            return NSOrderedAscending;
////        }同义语下句
        return nu1>nu2;
    }];
//    NSArray *newArr1= [array sortedArrayUsingSelector:@selector(compare:)];
    NSLog(@"%@",resultArray);
    
    NSArray *array10 = [NSArray arrayWithObjects:@"123",@"21",@"33",@"69",@"108",@"256", nil];
    NSArray *resultArray1 = [array10 sortedArrayWithOptions:NSSortConcurrent usingComparator:^NSComparisonResult(id obj1, id obj2) {
        int nu1 = [obj1 intValue];
        int nu2 = [obj2 intValue];//如果没有这两句那么按照ascii码表排序
        //        if (nu1 > nu2) {
        //            return NSOrderedDescending;
        //        }else if (nu1 == nu2){
        //            return NSOrderedSame;
        //        }else{
        //            return NSOrderedAscending;
        //        }
              return nu1<nu2;
//        return [obj1 compare:obj2];
    }];
    NSLog(@"%@",resultArray1);
    
    
    
    
    
//    字符串数组转字符串
    NSArray *arr3 = @[@"liu",@"jing",@"yi"];
//    join
//    1
    NSMutableString *strM1= [NSMutableString string ];
    
    for (NSString *strliu in arr3) {
        [strM1 appendString:strliu];
        [strM1 appendString:@"-"];
      
    }
   [strM1 deleteCharactersInRange:NSMakeRange(strM1.length-1, 1)];
    
    NSLog(@"%@",strM1);
    
//    2
    NSString *str40 = [arr3 componentsJoinedByString:@"-----"];
    NSLog(@"%@",str40);
   
    
//    可逆  字符串转数组
    NSString *str41 = @"liu-jing-yi";
    NSArray *arr41 = [str41 componentsSeparatedByString:@"-"];
    NSLog(@"%@",arr41);
    
    
  
    
    
//    nsarray  write read  writeToFile只能写数组中保存的元素都是fd框架中的类创建的对象，自定义对象不能写入
//    本质是写写入了一个xml文件 ，将XML文件的扩展名保存为plist
     NSArray *arr4 = @[@"liu",@"jing",@"yi"];
    BOOL flag1= [arr4 writeToFile:@"/Users/a691/Desktop/arr4.plist" atomically:YES];
    //习惯将xml保存为plist扩展名文件，查看器
    NSLog(@"%i",flag1);
    
    
    
    NSArray *newArray2 = [NSArray arrayWithContentsOfFile:@"/Users/a691/Desktop/arr4.plist"];
    NSLog(@"%@",newArray2);
    
    
    NSMutableArray *arrM = [NSMutableArray array ];
    
    //    写代码插入的一定是一个数组格式，实际可能插入整个数组，或将数组元素取出单独插入
    [arrM addObject:@"aaa"];
     [arrM addObject:@[@"lll",@"dfs"]];//将整体作为一个元素插入
    [arrM addObjectsFromArray:@[@"lll",@"dfs"]];//将每一个元素取出插入
    
    
    
    [arrM insertObject:@"lkj" atIndex:1];//到指定位置

    NSIndexSet *set3 = [NSIndexSet indexSetWithIndexesInRange:NSMakeRange(2, 2)];
    

    [arrM insertObjects:@[@"a",@"b"] atIndexes: set3];
    NSLog(@"%@",arrM);
 
    
    [arrM removeObjectAtIndex:0];
    [arrM replaceObjectAtIndex:0 withObject:@"re"];//等同arrM[0] = @"re";
    [arrM removeLastObject];
    [arrM removeObject:@"a"];
      NSLog(@"%@",arrM[0]);
     NSLog(@"%@",arrM);
    
//    不能快速创建可变数组或字符串，如果吧一个不可变当可变来使用，触发运行时错误
//    NSMutableArray *arrMMM = @[@"d",@"dsf"];
//    [arrMMM addObject:@"dsfds"]
    
    //    NSMutableString *str310 =@"dsf";
    //
    //    [str310 setString:@"dsf"];
    //    NSLog(@"%@",str310);
  
    
    
    
    
    
    
    
    
    
    
    
    
//    key value 11 对应
    NSDictionary *dict = [NSDictionary dictionaryWithObjects:@[@"ga",@"55"] forKeys:@[@"0",@"1"]];
    NSLog(@"%@ %@",[dict objectForKey:@"0"],[dict objectForKey:@"1"]);
    
//    NSDictionary *dict1 = @{key :value }快速创建
    
    NSDictionary *dict1 = @{@"name":@"ljy",@"height":@"175"};
    NSLog(@"%@ %@",dict1[@"name"],dict1[@"height"]);
    
    
    
    
    
    
    
NSLog(@"count = %lu",dict1.count);
    //dictionary traversal
//    如何获取key value的个数，键和值
//1不用
//    NSArray *keys = dict1.allKeys;//取出所有Key
//    
//    for (int i=0; i<dict1.count; i++){
//        NSString *key= keys[i];
//        NSString *value = dict1[key];
//        NSLog(@"%@ %@",key,value );
//    }
//    2,增强for,   通过增强for  可以将所有的key取出敷值给obj(也不用)
//    for (NSString *key2    in dict1) {
////        NSLog(@"%@",key2);
//        NSString *value2 = dict1[key2];
//        NSLog(@"%@ %@",key2 ,value2);
//    }
//    3.迭代器
    [dict1 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@ %@",key ,obj);
    }];
    
    NSDictionary *dict2 = @{@"name":@"ljy",@"weight":@"65"};
    [dict2 enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        NSLog(@"%@ %@",key ,obj);
    }];
    
//    字典无序
    
    [dict2 writeToFile:@"/Users/a691/Desktop/dict2.plist" atomically:1];

    NSDictionary *newDict2 = [NSDictionary dictionaryWithContentsOfFile:@"/Users/a691/Desktop/dict2.plist"];
    NSLog(@"%@",newDict2);
    
    
    
    
    
//    不能通过@{},创建可变字典
//    不可变字典 key不能相同（后面的key对应的值不能够保存），
//    可变字典后面的key对应的值会覆盖前面的值
    
    
    
    NSMutableDictionary *dictM = [NSMutableDictionary dictionary];
    [dictM setObject:@"ljyy" forKey:@"name"];
    NSLog(@"%@" ,dictM);
    [dictM setValuesForKeysWithDictionary:@{@"name1":@"ljy1",@"name2":@"ljy2"}];
    NSLog(@"%@",dictM);
    
    [dictM setValue:@"ljy20" forKey:@"name2"];//等价于dictM[@"name2"]= @"ljy"
    
    [dictM removeObjectForKey:@"name2"];
    
    NSLog(@"%@",dictM);
    NSLog(@"name1= %@", dictM[@"name1"]);
    
    
    
    
    
//    nspoint cgpoint
//    NSSize CGSize
//NSRect  CGRect  Other name,规范用CG结构体
//    CGPoint point = NSMakePoint(10, 10  );
//    CGSize size = NSMakeSize(10, 10);//尺寸
//    
////    同时保存坐标和尺寸
//    CGRect rect = NSMakeRect(10, 10, 10, 10);
//    
//    
    
    
    
    

    
    NSInteger age = 10;
    double number= 1.5144;
    float value = 9.99f;
    
    //    将基本数据类型包装成对象类型 才能传入对象（数组）
//   NSNumber *ageN = [NSNumber numberWithInt:age];
     NSNumber *ageN = [NSNumber numberWithInteger:age];
    NSNumber *numberN = [NSNumber numberWithDouble:number];
    NSNumber *valueN = [NSNumber numberWithFloat:value];
    NSArray  *arrN = @[ageN, numberN ,valueN];
    NSLog(@"%@",arrN);
    
//   （简写） 如果传入的是变量，@() ，若是常量去掉（）
    NSNumber* temp2 =@(number);
    NSNumber*temp1 = @(age);
    NSNumber *temp3 = @(value);
    NSArray  *arrN1 = @[temp1,temp2,temp3];
    NSLog(@"%@",arrN1);
    
    
    
    
    
    
    

    
    //    将对象类型转换为基本数据类型，可以取出
    int temp4 = [ageN intValue];
    double temp5 = [numberN doubleValue];
    float temp6 = [valueN floatValue];
    
    NSLog(@"%i %f %f",temp4,temp5,temp6);
    
    
    
    
    
//    nsvalue包装常用结构体
    CGPoint  point2= NSMakePoint(10, 10);
    NSValue *arrPoint = [NSValue valueWithPoint:point2];
    
    NSArray *arrTest = @[arrPoint];
    NSLog(@"%@",arrTest);
//    nsvalue的一个子类是nsnumber
//    NSValue可以包装任意类型
// 包装自定义的结构体
    
    typedef struct{
        int age;
        char *name;
        double height;
    } Ren;
    
    Ren p = {20,"ljy",1.77};
//    valueWithBytes接受一个指针传递需要包装的结构体的变量的地址
//    objCType船传递需要包装的数据类型
    NSValue *pValue = [NSValue valueWithBytes:&p objCType:@encode(Ren)];
//    NSArray *renArr = @[pValue];
//    NSLog(@"%@",renArr);
//
    
    Ren res ;
    [pValue getValue:&res];
    NSLog(@"%i %s %f",res.age, res.name ,res.height);
    
    
    
    
    
    
    
    Person *s = [[Person alloc]init];
   s.birthday= (Date){2015,1,1};
//    Date s= {2015,1,1};
  
    
 s.age = 1;
 //    设置枚举的值
  s.sex= 1;
[s StudentWithSex:s.sex];
    
//       NSLog(@"%i",s.sex);
    Date  p11 = {2015,3,1};
    NSValue *pValue1 = [NSValue valueWithBytes:&p11 objCType:@encode(Date)];
//    NSArray *renArr1 = @[pValue1];
//    NSLog(@"%@",renArr1);格式是地址 取出来验证一下

    
    Date res1 ;//临时地址
    [pValue1 getValue:&res1];
    NSLog(@"%i %i %i",res1.year , res1.month ,res1.day);
    
    
    
    
    
    
    
//    date方法创建的对象直接保存了当前的时间
    NSDate *now = [NSDate date];  //NSDate不可变
    NSTimeZone *zone = [NSTimeZone  systemTimeZone];
    NSUInteger  seconds = [zone secondsFromGMTForDate:now];
     NSDate *now1 = [now dateByAddingTimeInterval:seconds];//seconds
    NSLog(@"%@",now1);
    
    
    
    
    
    
//    time formatting   nsdate->nsstring
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    formatter.dateFormat = @"yyyy年MM月dd日 HH时 mm分 ss秒 Z";
    
    NSString *res2 = [formatter stringFromDate:now];
 
    NSLog(@"%@",res2);
    
    
    
    
//    nsstring->nsdate
    
    NSString*strTime = @"2016年10月20日 11时 26分 20秒 +0800";
    
    NSDate *date = [formatter dateFromString:strTime];
    
    NSLog(@"%@",date);//自动转化为+oooo
//    如果是从nsstring转换成nsdate    那么datematter的格式必须和字符串的格式一样才可以，不然参数传递不过来
    
    
    
//    get year
    
    NSCalendar *cal = [NSCalendar currentCalendar];//单个获取
    NSCalendarUnit typeEnum = NSCalendarUnitYear |
                                            NSCalendarUnitMonth |
                                              NSCalendarUnitDay |
                                                NSCalendarUnitHour |
                                            NSCalendarUnitMinute |
                                            NSCalendarUnitSecond ;
    NSDateComponents  *unitYear=  [cal components: typeEnum fromDate:now];
    
    NSLog(@"%ld",unitYear.year);
     NSLog(@"%ld",unitYear.month);
    
    NSLog(@"%ld",unitYear.day);
    NSLog(@"%ld",unitYear.hour);
    
    NSLog(@"%ld",unitYear.minute);
    NSLog(@"%ld",unitYear.second);
    
    
//    比较差值
    
    NSDateComponents *cmps=   [cal  components:typeEnum fromDate:date toDate:now options:0];
    NSLog(@"%ld %ld", cmps.hour,cmps.minute );
    
    
    
//     NSLog(@"%@",now);
    
    
//    单例   创建出来的对象（只有一个）由全局共享，指向同一块存储空间，同一个对象被拿到
    
//    isExist
    NSFileManager *manager = [NSFileManager defaultManager];
  BOOL flag3=   [manager fileExistsAtPath:@"/Users/a691/Desktop/0816"];
    
    NSLog(@"%i",flag3);
//    isExist  and isDirectory
    BOOL dir = 0;
    BOOL flag4= [manager fileExistsAtPath:@"/Users/a691/Desktop/0816" isDirectory:&dir];
    
    NSLog(@"%i %i",flag4, dir);
    
    
    
    
    
    
//    获取文件夹的属性
    NSDictionary *info = [NSDictionary dictionary ];
    info =  [manager attributesOfItemAtPath:@"/Users/a691/Desktop/0816" error:nil];
    NSLog(@"%@",info);
    
    
    
//    获取文件夹中所有文件 只能获得下一层的文件
//    error可以监听是否获取成功,方便弹窗提醒
    NSError *error = nil;
   NSArray *arr42= [manager contentsOfDirectoryAtPath:@"/Users/a691/Desktop/0816"  error:nil];
    if(error ==nil){
        NSLog(@"%@ ",arr42);}else{
            NSLog(@"nima");}
//获取所有的子文件；
//    NSArray *arr43 = [manager subpathsAtPath:@"/Users/a691/Desktop/0816" ];
//    NSArray *arr44 = [manager subpathsOfDirectoryAtPath:@"/Users/a691/Desktop/0816" error:nil];
//    NSLog(@"%@",arr44);
//    NSLog(@"%@",arr43);//等同
    
    
    
    
    
    
//    只能用于创建文件夹，withIntermediateDirectories路径中如果出现不存在的文件夹，yes会自动创建
    [manager createDirectoryAtPath:@"/Users/a691/Desktop/man" withIntermediateDirectories:YES attributes:nil error:nil];
    
//    crfile
    
    NSString *str45 = @"dsfz";
    NSData *data = [str45 dataUsingEncoding:NSUTF8StringEncoding];
    
    [manager createFileAtPath:@"/Users/a691/Desktop/file" contents:data attributes:nil];  
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   return 0;
    
}
