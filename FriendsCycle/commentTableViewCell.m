//
//  commentTableViewCell.m
//  FriendsCycle
//
//  Created by kede on 2017/7/18.
//  Copyright © 2017年 kede. All rights reserved.
//

#import "commentTableViewCell.h"

@implementation commentTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
    self.commentLabel.preferredMaxLayoutWidth = SCREEN_WIDTH - 90;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
