//
//  CenterTitleTableViewCell.m
//  ZHNStaticTable
//
//  Created by zhn on 2018/3/22.
//  Copyright © 2018年 zhn. All rights reserved.
//

#import "CenterTitleTableViewCell.h"

@interface CenterTitleTableViewCell()
@property (nonatomic,strong) UILabel *centerLabel;
@end

@implementation CenterTitleTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.centerLabel = [[UILabel alloc]init];
        self.centerLabel.textAlignment = NSTextAlignmentCenter;
        [self addSubview:self.centerLabel];
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    self.centerLabel.frame = self.bounds;
}

- (void)setTitleStr:(NSString *)titleStr {
    _titleStr = titleStr;
    self.centerLabel.text = titleStr;
}

@end
