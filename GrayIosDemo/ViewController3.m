//
//  ViewController3.m
//  GrayIosDemo
//
//  Created by shadow on 16/9/2.
//  Copyright © 2016年 shadow. All rights reserved.
//

#import "ViewController3.h"
#import "BeginViewController.h"

@interface ViewController3 ()

@end

@implementation ViewController3

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"GO" forState:UIControlStateNormal];
    btn.frame = CGRectMake(160, 100, 30, 36);
    [btn addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(160, 160, 100, 36)];
    lable.text = @"第四页";
    lable.font = [UIFont boldSystemFontOfSize:18.0];
    // Do any additional setup after loading the view.
}

-(IBAction)go:(id)sender{
//    BeginViewController *vc2 = [[BeginViewController alloc]init];
//    vc2.view.backgroundColor = [UIColor greenColor];
//    //看这里！！！！！push方法将视图一推向视图二
//    [self.navigationController pushViewController:vc2 animated:YES];
    //[self.navigationController popViewControllerAnimated:YES];    pop方法跳回前一视图
    //[self.navigationController popToRootViewControllerAnimated:YES];    popToRoot方法直接跳回第一视图
    NSArray *controllers = self.navigationController.viewControllers;
    //popToViewController方法，我们可以选择要跳到的视图
    [self.navigationController popToViewController:[controllers objectAtIndex:1] animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
