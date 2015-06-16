//
//  FISTriviaTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Leo Kwan on 6/16/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISTriviaTableViewController.h"

@interface FISTriviaTableViewController ()

@end

@implementation FISTriviaTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityLabel = @"Trivia Table";
    self.tableView.accessibilityIdentifier  = @"Trivia Table";

    self.navigationItem.title = self.destinationLocation.name;
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

    return self.destinationLocation.trivia.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"triviaCell" forIndexPath:indexPath];
    
    FISTrivia *triviaForThisRow = self.destinationLocation.trivia[indexPath.row];
    
    cell.textLabel.text = triviaForThisRow.content;
    
    
    return cell;
}


@end
