//
//  FISLocationsTableViewController.m
//  locationTrivia-tableviews
//
//  Created by Leo Kwan on 6/16/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISLocationsTableViewController.h"

@interface FISLocationsTableViewController ()

@end

@implementation FISLocationsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.accessibilityLabel = @"Locations Table";
    self.tableView.accessibilityIdentifier = @"Locations Table";
    FISLocation *Hi1 = [[FISLocation alloc] initWithName:@"New York" Latitude:@2 Longitude:@1];
    FISLocation *Hi2 = [[FISLocation alloc] initWithName:@"London" Latitude:@2 Longitude:@1];
    FISLocation *Hi3 = [[FISLocation alloc] initWithName:@"Paris" Latitude:@2 Longitude:@1];
    FISLocation *Hi4 = [[FISLocation alloc] initWithName:@"Malaysia" Latitude:@2 Longitude:@1];

    
    FISTrivia *trivia1 = [[FISTrivia alloc] initWithContent:@"HSHTSHT" Likes:20];
    FISTrivia *trivia2 = [[FISTrivia alloc] initWithContent:@"srtsttdt" Likes:20];
    FISTrivia *trivia3 = [[FISTrivia alloc] initWithContent:@"HSHTSHT" Likes:20];
    FISTrivia *trivia4 = [[FISTrivia alloc] initWithContent:@"HSHTSHT" Likes:20];
    
    
    Hi1.trivia = @[trivia1,trivia2,trivia3,trivia4];
    self.locations = @[Hi1, Hi2, Hi3, Hi4];
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
    return self.locations.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"locationCell" forIndexPath:indexPath];

      FISLocation *locationForThisRow = self.locations[indexPath.row];
    
    cell.textLabel.text = locationForThisRow.name;
    cell.detailTextLabel.text = [NSString stringWithFormat:@"%lu", (unsigned long)locationForThisRow.trivia.count];
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    FISTriviaTableViewController *destinationVC = segue.destinationViewController;
    
    NSIndexPath *ip = self.tableView.indexPathForSelectedRow;
    
    destinationVC.destinationLocation = self.locations[ip.row];
    
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}





@end
