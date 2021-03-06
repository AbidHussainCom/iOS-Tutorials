//
//  FruitTableViewController.m
//  AdaptiveCell
//
//  Created by Hari Kunwar on 11/7/14.
//  Copyright (c) 2014 Hari Kunwar. All rights reserved.
//

// Converting to Adaptive cell.
// 1 - Add constraints to pin each subview on all sides — that is, each subview should have leading, top, trailing and bottom constraints.
// 2 - Add `self.tableView.rowHeight = UITableViewAutomaticDimension;` and `self.tableView.estimatedRowHeight = 200;` in viewDidLoad
//

#import "FruitTableViewController.h"
#import "FruitTableViewCell.h"
#import "Fruit.h"
#import "UIView+Layout.h"


NSString *fruitCellIdentifier = @"fruitCell";

@interface FruitTableViewController () {
    NSArray *_fruits;
}
@end

@implementation FruitTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _fruits = [Fruit fruitsCollection];
    
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 200;
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return _fruits.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    FruitTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:fruitCellIdentifier forIndexPath:indexPath];
    
    Fruit *fruit = _fruits[indexPath.row];
    
    cell.fruitLabel.text = fruit.name;
    cell.fruitSubLabel.text = fruit.name;
    
    return cell;
}


@end
