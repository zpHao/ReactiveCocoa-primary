//
//  RACSubjectViewController.m
//  ReactiveCocoa入门到开发
//
//  Created by haozp on 2017/5/9.
//  Copyright © 2017年 haozp. All rights reserved.
//

#import "RACSubjectViewController.h"
#import "ReactiveObjC.h"
#import "RACSubjectView.h"

@interface RACSubjectViewController ()

@end

@implementation RACSubjectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //1、创建信号
    RACSubject *subject = [RACSubject subject];
    
    //2、订阅信号
    [subject subscribeNext:^(id  _Nullable x) {
        NSLog(@"%@",x);
    }];
    
    //3、发送信号
    [subject sendNext:@"RACSubject我来了！"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
