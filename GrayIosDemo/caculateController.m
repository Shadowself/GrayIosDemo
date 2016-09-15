//
//  caculateController.m
//  GrayIosDemo
//
//  Created by Shawdow on 16/9/9.
//  Copyright © 2016年 shadow. All rights reserved.
//

#import "caculateController.h"

@interface caculateController ()

@property (nonatomic, weak) IBOutlet UILabel *resultLabel;


@property (nonatomic, weak) IBOutlet UIButton *mImageButton;

@end

@implementation caculateController


- (IBAction)compute
{
    self.resultLabel.text = @"hello world!";
    
    //set animation
    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration: 2];
//    [UIView setAnimationBeginsFromCurrentState:YES];
//    CGPoint point = self.mImageButton.center;
//    point.x += 100;
//    self.mImageButton.center = point;
//    [UIView commitAnimations];
    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration: 2];
//    [UIView setAnimationBeginsFromCurrentState:YES];
//    CGRect point = self.mImageButton.frame;
//    point.origin.x += 100;
//    self.mImageButton.frame = point;
//    [UIView commitAnimations];

    
    CGRect point = self.mImageButton.frame;
    point.origin.x += 100;
    [UIView animateWithDuration:1 animations:^{
        self.mImageButton.frame = point;
    }];

    
    
    
}
- (void)viewDidLoad {
    [super viewDidLoad];
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

@end