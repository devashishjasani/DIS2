//
//  XYZFriendsNowWatchingViewController.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 13/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZFriendsNowWatchingViewController.h"
#import "XYZPost.h"
#import "XYZPostView.h"

@interface XYZFriendsNowWatchingViewController ()

@end

@implementation XYZFriendsNowWatchingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.horizontalScroll.delegate = self;
    self.horizontalScroll.scrollEnabled = YES;
    self.horizontalScroll.pagingEnabled=YES;

    [self loadAllPosts];
    [self populateTheScrollView];
    
    //[self.view addSubview:self.horizontalScroll];
   
    
}

- (void) populateTheScrollView
{
    [self.horizontalScroll.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    for (int i=0; i<10; i++) {
        
        XYZPostView *tempPost = [[XYZPostView  alloc] initWithPost:[self.postList objectAtIndex:i]];
        tempPost.frame = CGRectMake(self.horizontalScroll.frame.size.width*i, 5, tempPost.frame.size.width, tempPost.frame.size.height);
        [self.horizontalScroll addSubview:tempPost];
        
    }

    [self.horizontalScroll setContentSize: CGSizeMake(self.horizontalScroll.frame.size.width * self.postList.count, self.horizontalScroll.frame.size.height)];
    
    
}

- (void) loadAllPosts
{
    self.postList = [[NSMutableArray alloc] init];
    for (int i=0; i<10; i++)
    {
        
        XYZPost *temp = [[XYZPost alloc] init];
        [self.postList addObject:temp];
        
        
    }
    
}






- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
