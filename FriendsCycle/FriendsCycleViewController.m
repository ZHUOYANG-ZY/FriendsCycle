//
//  FriendsCycleViewController.m
//  FriendsCycle
//
//  Created by kede on 2017/7/12.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "FriendsCycleViewController.h"
#import "CycleViewCell.h"

@interface FriendsCycleViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation FriendsCycleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([CycleViewCell class]) bundle:nil] forCellReuseIdentifier:@"CycleViewCell"];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    CycleViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CycleViewCell" forIndexPath:indexPath];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 389;
}
@end
