//
//  ViewController2.m
//  GrayIosDemo
//
//  Created by shadow on 16/9/2.
//  Copyright © 2016年 shadow. All rights reserved.
//

#import "ViewController2.h"
#import "ViewController3.h"

@interface ViewController2 ()

@end

@implementation ViewController2

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"GO" forState:UIControlStateNormal];
    btn.frame = CGRectMake(160, 100, 30, 36);
    [btn addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(160, 160, 100, 36)];
    lable.text = @"第三页";
    // Do any additional setup after loading the view.
}

-(IBAction)go:(id)sender{
    ViewController3 *vc2 = [[ViewController3 alloc]init];
    vc2.view.backgroundColor = [UIColor greenColor];
    //看这里！！！！！push方法将视图一推向视图二
    [self.navigationController pushViewController:vc2 animated:YES];
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
