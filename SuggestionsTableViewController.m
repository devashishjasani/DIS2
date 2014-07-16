//
//  SuggestionsTableViewController.m
//  DIS2MobileApplication
//
//  Created by Giorgio Pretto on 7/15/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//
#import "SuggestionsViewController.h"
#import "SuggestionsTableViewController.h"

@interface SuggestionsTableViewController ()

@end

@implementation SuggestionsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    

    _suggestions = [NSArray arrayWithObjects:@"Drama",@"Sport",@"Adventure",@"Fantasy",@"Comedy", nil];
    
    self.tabBarController.tabBar.tintColor = [UIColor colorWithRed:0 green:.2 blue:.2 alpha:1];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_suggestions count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"suggestionCell" forIndexPath:indexPath];
    
    cell.textLabel.text = _suggestions[indexPath.row];
    
    return cell;
}







- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    NSString *selectedCategory= [_suggestions objectAtIndex:[_suggestionsTV indexPathForSelectedRow].row];
    //    NSArray *filteredCardsByTopic  = [filteredCardsByCourse filteredArrayUsingPredicate:[NSPredicate predicateWithFormat:@"(title == %@)", selectedTopic]];
    
    // pass the array of cards to next view
    SuggestionsViewController *targetVC = segue.destinationViewController;
    //    targetVC.storeCards = filteredCardsByTopic;
    targetVC.category = selectedCategory;

    
    
}


@end
