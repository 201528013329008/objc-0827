//
//  main.c
//  huawei
//
//  Created by 691 on 16/9/23.
//  Copyright © 2016年 691. All rights reserved.
//


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//int sort_function( const void *a, const void *b);

char list[5][4] = { "cat", "car", "cab", "cap", "can" };




int sort_function( const void *a, const void *b)
{
    return( strcmp(a,b) );
}

int main(void)
{
   
    
    qsort(list, 5, 4, sort_function);
    
    for (int x = 0; x < 5; x++)
        printf("%s\n", list[ x]);
    return 0;
}
//电风扇哥哥哥哥哥哥哥哥哥哥哥哥
