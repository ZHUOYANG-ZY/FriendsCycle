//
//  CycleViewCell.h
//  FriendsCycle
//
//  Created by kede on 2017/7/12.
//  Copyright © 2017年 kede. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CycleViewCell : UITableViewCell
/*头像*/
@property (weak, nonatomic) IBOutlet UIImageView *headerImg;
/*名字*/
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
/*发表内容*/
@property (weak, nonatomic) IBOutlet UILabel *contentLabel;
/*发表图片九宫格*/
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;
/*评论*/
@property (weak, nonatomic) IBOutlet UITableView *commentTableView;

@end
