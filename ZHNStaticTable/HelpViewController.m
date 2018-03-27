//
//  HelpViewController.m
//  ZHNStaticTable
//
//  Created by zhn on 2018/3/27.
//  Copyright © 2018年 zhn. All rights reserved.
//

#import "HelpViewController.h"
#import "UITableView+ZHNStaticTable.h"

@interface HelpViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UITableView *tableView;
@end

@implementation HelpViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView = [[UITableView alloc]init];
    [self.view addSubview:self.tableView];
    self.tableView.frame = self.view.bounds;
    
    [self.tableView zhn_initializeEnvironmentWithOriginalDelegate:self originalDatasource:self];
    [self.tableView zhn_addSection:^(ZHNStaticTableSection *section) {
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"帮助";
            };
        }];
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"帮助";
            };
        }];
    }];
    
    [self.tableView zhn_addSection:^(ZHNStaticTableSection *section) {
        section.headerHeight = 30;
        section.footerHeight = 30;
        [section zhn_addRow:^(ZHNStaticTableRow *row) {
            row.displayCellHandle = ^(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) {
                cell.textLabel.text = @"帮助";
            };
        }];
    }];
}

- (void)dealloc {
    NSLog(@"HelpViewController dealloc");
}



@end
