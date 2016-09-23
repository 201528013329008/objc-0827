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
    NSString *str5= @"pp";
    NSString*str6 = @"op";
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
    
    NSString* str7= @"fff.gif";
    if ([str7 hasSuffix:@".gif"]) {//前缀是prefix
        NSLog(@"是动态图");
    }
    
    NSRange range = [str7 rangeOfString:@".gif"];
    NSLog(@"location = %lu,length = %lu", range.location,range.length);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    return 0;
    
    

    
}
