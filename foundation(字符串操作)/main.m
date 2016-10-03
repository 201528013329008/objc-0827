//
//  main.m
//  foundation()
//
//  Created by 691 on 16/9/19.
//  Copyright © 2016年 691. All rights reserved.
//

#import <Foundation/Foundation.h>

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
    
    NSString *str30 = @"ljy";
     str30 = @"lll";
//    NSString *newStr30 = [str30 stringByReplacingOccurrencesOfString:@"l" withString:@"p"];
    NSLog(@"%@",str30);
    
    
    
    NSMutableString *str31= [NSMutableString new];
    [str31 appendString:@"dsf"];
    NSLog(@"%@",str31);
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
    
    
    
    
    
    
    
    
    

    
}
