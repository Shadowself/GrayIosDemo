//
//  BeginViewController.m
//  GrayIosDemo
//
//  Created by shadow on 16/9/2.
//  Copyright © 2016年 shadow. All rights reserved.
//

#import "BeginViewController.h"
#import "caculateController.h"

@interface BeginViewController ()

@property (nonatomic, strong) UITableView *tableView;

@end

@implementation BeginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.automaticallyAdjustsScrollViewInsets = NO;
//    UITextView *textLabel = [[UITextView alloc] init];
//    button.titleLabel = @"text";
    
//    [self.view addSubview:_tableView];
    
    //设置视图二样式，添加一个按钮，点击触发事件，跳转到下一页面
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeSystem];
    [btn setTitle:@"GO" forState:UIControlStateNormal];
    btn.frame = CGRectMake(160, 100, 30, 36);
    [btn addTarget:self action:@selector(go:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    UILabel *lable = [[UILabel alloc]initWithFrame:CGRectMake(160, 160, 100, 36)];
    lable.text = @"第一页";
    [self.view addSubview:lable];
    // Do any additional setup after loading the view.
}

//这里才是实现页面跳转的重点！！！！
-(IBAction)go:(id)sender{
    caculateController *vc2 = [[caculateController alloc] init];
    vc2.view.backgroundColor = [UIColor whiteColor];
    //看这里！！！！！push方法将视图一推向视图二
    [self.navigationController pushViewController:vc2 animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//- (UITableView *)tableView{
//    
//    if (!_tableView) {
//        _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
//
//        
//        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
////        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell1"];
//        
//        
//    }
//    return _tableView;
//}

//- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    
//    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell1"
//                                                            forIndexPath:indexPath];
//    
//    cell.textLabel.text = [NSString stringWithFormat:@"这头像好浪 gray~~~~ +%ld",indexPath.row];
//    
//    return cell;
//}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
