//
//  VXVXDataPageViewController.m
//  VXDataPage
//
//  Created by voidxin on 17/4/10.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import "VXDataPageViewController.h"
#import <VXCommonPageServicePtotocol/VXCommonPageServicePtotocol.h>
#import <VXProtocolManager/VXProtocolManager.h>
@interface VXDataPageViewController ()
@property(nonatomic,strong)UILabel *label;
@end

@implementation VXDataPageViewController

- (instancetype)initWithObjectForDataPageViewController:(id)Object {
    self = [super init];
    if (self) {
        [self addUI];
    }
    return self;
}
#pragma mark - addUI
- (void)addUI {
    
    //base ui setter
    [self.view setBackgroundColor:[UIColor whiteColor]];
    self.label.frame = CGRectMake(0, 0, 200, 100);
    self.label.center = CGPointMake(self.view.frame.size.width * 0.5, self.view.frame.size.height * 0.5);
    [self.view addSubview:self.label];
    
    
    //tag gesture
    self.label.userInteractionEnabled = YES;
    UITapGestureRecognizer *tapGes = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapAction:)];
    [self.label addGestureRecognizer:tapGes];
}
#pragma mark - tapAction
- (void)tapAction:(UITapGestureRecognizer *)ges {
    id <VXCommonPageServicePtotocol> private = [VXProtocolManager serviceProvideForProtocol:@protocol(VXCommonPageServicePtotocol)];
    UIViewController *commonVC = [private commonPageViewControllerWith:@"commonpage"];
    commonVC.title = @"commonPage";
    [self.navigationController pushViewController:commonVC animated:YES];
}

#pragma mark - getter
- (UILabel *)label {
    if (!_label) {
        _label = [[UILabel alloc] init];
        _label.backgroundColor = [UIColor blueColor];
        _label.textColor = [UIColor blackColor];
        _label.textAlignment = NSTextAlignmentCenter;
        _label.text = @"this is dataPage view";
        
        
    }
    return _label;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
