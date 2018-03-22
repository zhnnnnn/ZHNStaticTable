//
//  NormalSettingTableViewCell.m
//  ZHNStaticTable
//
//  Created by zhn on 2018/3/22.
//  Copyright © 2018年 zhn. All rights reserved.
//

#import "NormalSettingTableViewCell.h"

@implementation NormalSettingTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    if (self = [super initWithStyle:style reuseIdentifier:reuseIdentifier]) {
        self.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    return self;
}

@end
