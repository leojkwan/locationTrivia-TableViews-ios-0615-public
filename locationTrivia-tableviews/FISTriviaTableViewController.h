//
//  FISTriviaTableViewController.h
//  locationTrivia-tableviews
//
//  Created by Leo Kwan on 6/16/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISLocationsTableViewController.h"
#import "FISLocation.h"

@interface FISTriviaTableViewController : UITableViewController

@property (nonatomic, strong) FISLocation *destinationLocation;

@end
