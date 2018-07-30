//
//  main.m
//  hash算法
//
//  Created by RaoBo on 2018/7/30.
//  Copyright © 2018年 RaoBo. All rights reserved.
//  https://www.jianshu.com/p/82c79c43bb62

#import <Foundation/Foundation.h>
/**
 Hash 算法
 题 ： 所在一个字符串中找到第一个只出现一次的字符
 如：输入"sadagqeqsf" ,则输出 d。
 */

//这里面用到哈希表的思想
//数组是有序的。
//给我一个key，我将这个key对应的index返回给你。在通过index取出数组中对应index 的值。
// f(key) ----> index;
//这个就快了。Class 的方法缓存中用到hash的思想。 有个地方用到这个东西。



char findFirstChar(char *str) {
    char result = '\0';
    
    //定义一个数组,存储各个字母出现次数
    int array[123]; //ASCII码表中的 122---> z
    //对数组进行初始化
    for(int i=0; i<123; i++) {
        array[i] = 0;
    }
    
    //定义一个指针，指向当前字符串头部
    char *p = str;
    //遍历每个字符
    while (*p != '\0') {
        //在字母对应存储位置 统计出现次数。出现一次就+1
        //*(p++) 数组的下标。
        array[*(p++)]++;
    }
    
    //将p指针重新指向字符串头部
    p = str;
    //遍历每个字母出现的次数
    while (*p != '\0') {
        //遇到第一个出现次数为1的字符,打印结果
        if (array[*p] == 1) {
            result = *p;
            break;
        }
        
        //反之继续向后遍历
        p++;
    }
    
    return result;
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        char *s = "sadagqeqsf";
        printf("%c\n",findFirstChar(s));
        
    }
    return 0;
}
