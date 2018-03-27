//
//  ViewController.m
//  ZHNStaticTable
//
//  Created by zhn on 2018/3/21.
//  Copyright © 2018年 zhn. All rights reserved.
//

#import "ViewController.h"
#import "UITableView+ZHNStaticTable.h"
#import "NormalSettingTableViewCell.h"
#import "CenterTitleTableViewCell.h"
#import "HelpViewController.h"

@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView = [[UITableView alloc]initWithFrame:CGRectZero style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
    
    [self.tableView zhn_initializeEnvironmentWithDefaultRowHeight:44
                                                 defaultCellClass:[NormalSettingTableViewCell class]
                                             defaultSectionHeader:^UIView *(NSInteger section) {
                                                 return nil;
                                             }
                                              defaultHeaderHeight:10
                                             defaultSectionFooter:nil
                                              defaultFooterHeight:0
                                                 OriginalDelegate:self
                                               originalDatasource:self];
    
    __weak typeof(self) weakSelf = self;
    [self.tableView zhn_addSection:^(ZHNStaticTableSection *section) {
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"账号与安全";
            };
            row.selectCellHandle = ^(UITableView *tableView, NSIndexPath *indexPath) {
                NSLog(@"账户与安全");
            };
        }];
    }];
    
    [self.tableView zhn_addSection:^(ZHNStaticTableSection *section) {
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"新消息通知";
            };
        }];
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"隐私";
            };
        }];
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"通用";
            };
        }];
    }];
    
    [self.tableView zhn_addSection:^(ZHNStaticTableSection *section) {
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"帮助与反馈";
            };
            row.selectCellHandle = ^(UITableView *tableView, NSIndexPath *indexPath) {
                [weakSelf.navigationController pushViewController:[[HelpViewController alloc]init] animated:YES];
            };
        }];
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"关于微信";
            };
        }];
    }];
    
    [self.tableView zhn_addSection:^(ZHNStaticTableSection *section) {
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.cellClass = [CenterTitleTableViewCell class];
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                [(CenterTitleTableViewCell *)cell setTitleStr:@"切换账号"];
            };
        }];
    }];
    
    [self.tableView zhn_addSection:^(ZHNStaticTableSection *section) {
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.cellClass = [CenterTitleTableViewCell class];
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                [(CenterTitleTableViewCell *)cell setTitleStr:@"切换账号"];
            };
        }];
    }];
}

@end
