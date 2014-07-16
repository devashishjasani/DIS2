//
//  SuggestionsTableViewController.h
//  DIS2MobileApplication
//
//  Created by Giorgio Pretto on 7/15/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuggestionsTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableView *suggestionsTV;

@property NSArray *suggestions;

@end
