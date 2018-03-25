# ZHNStaticTable

## How to use

#### 1.
tableView call

```
- (void)zhn_initializeEnvironmentWithDefaultRowHeight:(CGFloat)defaultRowHeight
                                     defaultCellClass:(Class)defaultCellClass
                                 defaultSectionHeader:(ZHNStaticTableSectionHeader)sectionHeader
                                  defaultHeaderHeight:(CGFloat)headerHeight
                                 defaultSectionFooter:(ZHNStaticTableSectionFooter)sectionFooter
                                  defaultFooterHeight:(CGFloat)footerHeight
                                     OriginalDelegate:(id<UITableViewDelegate>)originalDelegate
                                   originalDatasource:(id<UITableViewDataSource>)originalDatasource;
```
or   

```
- (void)zhn_initializeEnvironmentWithOriginalDelegate:(id <UITableViewDelegate>)originalDelegate
                                   originalDatasource:(id <UITableViewDataSource>)originalDatasource;
```
method to initialize environment first.


#### 2.
tableView call ```- (void)zhn_addSection:(void(^)(ZHNStaticTableSection *section))sectionHandle;```method to add a section and set section detail.


#### 3. 
section call  ```- (void)zhn_addRow:(void(^)(ZHNStaticTableRow *row))rowHandle;``` method to add a row and set row deail.


see more detail in `ViewController.m`
