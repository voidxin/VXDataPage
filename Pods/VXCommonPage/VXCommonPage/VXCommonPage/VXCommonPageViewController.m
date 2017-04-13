//
//  VXCommonPageViewController.m
//  VXCommonPage
//
//  Created by voidxin on 17/4/13.
//  Copyright © 2017年 voidxin. All rights reserved.
//

#import "VXCommonPageViewController.h"

@interface VXCommonPageViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView *tableView;
@end

@implementation VXCommonPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}
- (instancetype)initCommonPageViewControllerWithObject:(id)object {
    self = [super init];
    if (self) {
        [self addUI];
    }
    return self;
}

#pragma mark - addUI 
- (void)addUI {
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
    [self.view setBackgroundColor:[UIColor whiteColor]];
}

#pragma mark - tableView delegate and dataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 10;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CELL"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CELL"];
    }
    cell.textLabel.text = @"commonPage";
    return cell;
}

#pragma mark - getter 
- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
        _tableView.delegate = self;
        _tableView.dataSource = self;
    }
    
    return _tableView;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
