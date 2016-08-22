//
//  ViewController.m
//  DearBlock
//
//  Created by nd_zsc on 16/8/19.
//  Copyright © 2016年 很傻很天真. All rights reserved.
//

#import "ViewController.h"
#import "ZSC_SecondVC.h"
#import "ZSC_hello_block.h"

@interface ViewController ()

@property (nonatomic, strong) NSString * all_get_is;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//1 block 语法
    // Block变量的赋值格式为: Block变量 = ^(参数列表){函数体};

    
    
//2.1 无参数 无返回值
    void (^WuCanShuWuFanHuiZhi)() = ^{
        NSLog(@"心落入情牢，爱嗜血燃烧");
    };
    //调用
    WuCanShuWuFanHuiZhi();
    
//2.2 无参数 有返回值
    NSString * (^WuCanShuYouFanHuiZhi)() = ^{
        NSString * a = @"荣耀在你面前付之一笑";
        return a;
    };
    //调用
    NSString * a = WuCanShuYouFanHuiZhi();
    NSLog(@"%@ 痛无论多少,泪一滴就好", a);
    
    
//2.3 有参数  无返回值
    void (^YouCanShuWuFanHuiZhi)() = ^(NSString *name){
        NSLog(@"%@ 若是快刀 我奉献怀抱 ！",name);
    };
    YouCanShuWuFanHuiZhi(@"痴情");
    
    
//2.4 有参数  有返回值
    NSString * (^YouCanShuYouFanHuiZhi)(NSString *, NSString *) = ^(NSString * string_1,NSString * string_2){
        return [string_1 stringByAppendingString:string_2];
    };
    NSString * b = YouCanShuYouFanHuiZhi(@"仰天长啸",@"我心寂寥");
    NSLog(@"%@ 英雄泪只用来怜芳草 ",b);
    
    
    
//3 改变block中局部变量的值
    //在这个地方不要想 __weak
    __block NSString *sentence = @"仰天长啸";//不加__block会报错（一句话：不能指向a对应的地址）（扯淡的话：  在block的生成结构体实例的时候，__block也会生成一个结构体实例，并且在该结构体中有一个__forwording的指针指向截取的变量的内存地址，而block的__main_block_impl_0结构体实例持有指向__block变量的__Block_byref_val_0结构体实例的指针，所以block可以拥有指向截取变量内存地址的指针）
    
    void (^JiuWeiLeShiShiXiBu)() = ^{
        sentence = @"我心寂寥";
        NSLog(@"%@ 雨一时风一时暮与朝",sentence);
    };
    JiuWeiLeShiShiXiBu();
    
    
//4 Block 链式反应 用OC一样写出Swift代码
    ZSC_hello_block *is_instance = [[ZSC_hello_block alloc] init];
    
    is_instance.say_hello_to(@"is only a test").da_bu_guo_pao_a().jiu_da_ni_za_di();
    
    // Do any additional setup after loading the view, typically from a nib.
}



/**
 *  @author 很傻很天真, 16-08-19 15:08:08
 *
 *  block下个界面回调传值
 *
 *  @param sender button
 *  @param event  event
 *
 *  @since ZSC
 */
- (IBAction)for_next:(UIButton *)sender forEvent:(UIEvent *)event {
// 4 解决循环引用
    __weak typeof (self) wearSelf = self;
    //4.1 使用了__weak，如果在代码中不将控制器弱引用block的话就会发生循环引用而无法释放的问题。（A控制器拥有block，而且block拥有A）。
    //4.2 还可以使用__block（self拥有block，block拥有__block，__block拥有self） But必须要执行一次block才行 底层指正决定的
    ZSC_SecondVC *vc = [[ZSC_SecondVC alloc] init];
    vc.DearBlock = ^(NSString *name){
        wearSelf.all_get_is = name;
        NSLog(@"%@ 我与你约定在劫难逃! 恩怨易了 柔情难抛 恍然中 当时年少",wearSelf.all_get_is);
    };
    [self.navigationController pushViewController:vc  animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
