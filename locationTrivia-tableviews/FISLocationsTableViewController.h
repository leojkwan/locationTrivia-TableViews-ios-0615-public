//
//  FISLocationsTableViewController.h
//  locationTrivia-tableviews
//
//  Created by Leo Kwan on 6/16/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocation.h"
#import "FISTrivia.h"
#import "FISTriviaTableViewController.h"

@interface FISLocationsTableViewController : UITableViewController

@property (nonatomic, strong) NSArray *locations;

@end
