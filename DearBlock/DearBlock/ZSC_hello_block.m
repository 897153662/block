//
//  ZSC_hello_block.m
//  DearBlock
//
//  Created by nd_zsc on 16/8/19.
//  Copyright © 2016年 很傻很天真. All rights reserved.
//
/*
 ♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎
 ♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎
 ♥︎♥︎ 　       ◆          ◆◆◆◆◆   ◆    ◆         ◆           ◆          ◆                       ◆          ◆  ◆       ♥︎♥︎
 ♥︎♥︎ 　 ◆◆◆   ◆    ◆◆◆◆◆◆       ◆     ◆         ◆      ◆     ◆          ◆                    ◆◆◆◆◆◆◆      ◆  ◆       ♥︎♥︎
 ♥︎♥︎ 　   ◆   ◆     ◆  ◆    ◆  ◆◆◆◆◆  ◆◆◆◆      ◆       ◆          ◆◆◆◆◆◆◆◆◆◆◆               ◆     ◆     ◆   ◆◆◆◆◆   ♥︎♥︎
 ♥︎♥︎ 　◆◆◆◆◆◆ ◆◆◆◆   ◆  ◆  ◆   ◆   ◆ ◆   ◆      ◆         ◆◆◆◆◆◆◆  ◆         ◆               ◆◆◆◆◆◆◆     ◆  ◆        ♥︎♥︎
 ♥︎♥︎ 　 ◆  ◆ ◆  ◆  ◆◆◆◆◆◆◆◆◆◆◆ ◆   ◆◆    ◆      ◆            ◆                               ◆     ◆    ◆◆ ◆  ◆      ♥︎♥︎
 ♥︎♥︎ 　 ◆◆◆◆◆ ◆ ◆  ◆   ◆     ◆     ◆  ◆  ◆     ◆ ◆     ◆     ◆     ◆◆◆◆◆◆◆◆◆◆◆               ◆◆◆◆◆◆◆ ◆ ◆ ◆    ◆      ♥︎♥︎
 ♥︎♥︎ 　 ◆  ◆  ◆ ◆   ◆◆◆◆◆◆◆◆◆  ◆◆◆◆◆   ◆ ◆     ◆ ◆      ◆    ◆          ◆      ◆◆◆◆◆◆◆◆◆◆◆   ◆     ◆◆    ◆  ◆◆◆◆◆◆   ♥︎♥︎
 ♥︎♥︎ 　 ◆◆◆◆  ◆ ◆     ◆        ◆   ◆   ◆ ◆    ◆   ◆       ◆◆◆◆◆◆◆    ◆  ◆                  ◆◆◆◆◆◆◆◆◆     ◆    ◆  ◆   ♥︎♥︎
 ♥︎♥︎ 　 ◆  ◆◆ ◆ ◆     ◆◆◆◆◆◆   ◆   ◆     ◆    ◆   ◆          ◆       ◆  ◆◆◆◆◆                   ◆◆ ◆     ◆   ◆   ◆   ♥︎♥︎
 ♥︎♥︎ 　◆◆◆◆◆   ◆     ◆ ◆   ◆   ◆   ◆     ◆   ◆     ◆    ◆    ◆       ◆  ◆                     ◆◆   ◆     ◆   ◆   ◆   ♥︎♥︎
 ♥︎♥︎ 　    ◆  ◆ ◆   ◆   ◆◆◆    ◆◆◆◆◆     ◆  ◆       ◆  ◆     ◆      ◆ ◆ ◆                  ◆◆◆     ◆     ◆  ◆    ◆   ♥︎♥︎
 ♥︎♥︎ 　    ◆ ◆   ◆ ◆ ◆◆◆   ◆◆◆ ◆   ◆   ◆◆  ◆         ◆   ◆◆◆◆◆◆◆◆◆ ◆   ◆◆◆◆◆◆◆                   ◆◆◆     ◆ ◆   ◆◆    ♥︎♥︎
 ♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎
 ♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎♥︎
 */

#import "ZSC_hello_block.h"

@implementation ZSC_hello_block

/**
 *  @author 很傻很天真, 16-08-19 17:08:20
 *
 *  return  ^ZSC_hello_block *(NSString *name){
 NSLog(@"say hello to %@",name);
 return self;
 };
 *
 *  @param name <#name description#>
 *
 *  @since <#version number#>
 */
- (ZSC_hello_block *(^)())say_hello_to{
    return  ^ZSC_hello_block *(NSString *name){
        NSLog(@"say hello to %@",name);
        return self;
    };
}

- (ZSC_hello_block *(^)())da_bu_guo_pao_a{
    return ^(){
        NSLog(@"干掉多余的你才是最强的");
        return self;
    };
}

- (ZSC_hello_block *(^)())jiu_da_ni_za_di{
    return ^(){
        NSLog(@"当你不能站在绝对的位置时，绝不公平行事，让强者更强,让弱者更弱！");
        return self;
    };
}



@end
