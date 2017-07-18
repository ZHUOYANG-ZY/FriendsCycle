//
//  CycleViewCell.m
//  FriendsCycle
//
//  Created by kede on 2017/7/12.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "CycleViewCell.h"
#import "commentTableViewCell.h"
#import "CommentCollectionViewCell.h"
#import "UITableView+FDTemplateLayoutCell.h"

@interface CycleViewCell ()<UITableViewDelegate,UITableViewDataSource,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout>

@end
@implementation CycleViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    
    self.nameLabel.preferredMaxLayoutWidth = SCREEN_WIDTH -90;
    self.contentLabel.preferredMaxLayoutWidth = SCREEN_WIDTH -90;
    
    self.commentTableView.backgroundColor = [UIColor orangeColor];
    self.commentTableView.delegate = self;
    self.commentTableView.dataSource = self;
    
    
    self.collectionView.backgroundColor = [UIColor orangeColor];
    self.collectionView.delegate = self;
    self.collectionView.dataSource = self;
    
    
    [self.commentTableView registerNib:[UINib nibWithNibName:NSStringFromClass([commentTableViewCell class]) bundle:nil] forCellReuseIdentifier:@"commentTableViewCell"];
    [self.collectionView registerNib:[UINib nibWithNibName:NSStringFromClass([CommentCollectionViewCell class]) bundle:nil] forCellWithReuseIdentifier:@"CommentCollectionViewCell"];
    
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

#pragma mark - tableview
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    commentTableViewCell *cell  = [tableView dequeueReusableCellWithIdentifier:@"commentTableViewCell" forIndexPath:indexPath];
    return cell;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 9;
}
- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CommentCollectionViewCell * cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CommentCollectionViewCell" forIndexPath:indexPath];
    return cell;
}

- (CGSize)collectionView:(UICollectionView *)collectionView layout:(UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat width = (240 * SCREEN_WIDTH/320 - 80-20)/3;
    return CGSizeMake(width, width);
}
@end
