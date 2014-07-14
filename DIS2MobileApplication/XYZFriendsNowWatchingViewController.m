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
#import "XYZAppDelegate.h"
#import "XYZShow.h"

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
    
    for (int i=0; i<7; i++) {
        
        XYZPostView *tempPost = [[XYZPostView  alloc] initWithPost:[self.postList objectAtIndex:i]];
        tempPost.frame = CGRectMake(self.horizontalScroll.frame.size.width*i, 5, tempPost.frame.size.width, tempPost.frame.size.height);
        tempPost.tag=i;
        [tempPost setDelegate:self];
        
        [self.horizontalScroll addSubview:tempPost];

        
    }

    [self.horizontalScroll setContentSize: CGSizeMake(self.horizontalScroll.frame.size.width * self.postList.count, self.horizontalScroll.frame.size.height)];
    

    
    
}

- (void) changeTVChannel:(NSUInteger)showId
{
    
    UIView *to= [[self.tabBarController.viewControllers objectAtIndex:0] view];

    
    
    
    [UIView transitionFromView:self.view toView:to duration:0.7 options:UIViewAnimationOptionTransitionCrossDissolve completion:^(BOOL finished) {
        
        [to removeFromSuperview];
        self.tabBarController.selectedViewController = [self.tabBarController.viewControllers objectAtIndex:0];
    }];
    
    
    
     //        self.tabBarController.selectedViewController = [self.tabBarController.viewControllers objectAtIndex:0];
    
    
    // send the request
    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    myDelegate.channelNowPlaying = showId;
    
    NSURL *requestUrl = myDelegate.serverURL;
    NSString *bodyString = [NSString stringWithFormat:@"setChannel:%d",showId];
    NSMutableURLRequest *userCodeRequest = [NSMutableURLRequest requestWithURL:requestUrl];
    [userCodeRequest setHTTPMethod:@"POST"];
    [userCodeRequest setHTTPBody:[bodyString dataUsingEncoding:NSUTF8StringEncoding]];
    // launch the connection
    [[NSURLConnection alloc] initWithRequest:userCodeRequest delegate:self startImmediately:YES];

    
    
    
    //    NSError *error;
//    NSURLResponse *response;
//
//    NSData *responseData = [NSURLConnection sendSynchronousRequest:userCodeRequest returningResponse:&response error:&error];
//    NSString *responseString = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
//    // check for an error. If there is a network error, you should handle it here.
//    if(!error)
//    {
//        //log response
//        NSLog(@"Response from server = %@", responseString);
//    }
//    
    
    
}

// Copied and lightly modified from the given Example.
-(void)connection:(NSURLConnection *)connection didReceiveResponse:(NSURLResponse *)response
{
    
    NSHTTPURLResponse* httpResponse = (NSHTTPURLResponse*)response;
    NSInteger statusCode = [httpResponse statusCode];
    NSLog(@"%d",  (int)statusCode);
    //    NSLog(@"%@", [NSString stringWithFormat:@"%@",  httpResponse]);
    if (statusCode >= 300) {
        NSLog(@"ERROR connecting");
//        NSLog(statusCode);
        // call method on delegate
//        [_delegate didReceiveError:statusCode];
        
//        parseData = NO;
    } else {
//        parseData = YES;
    }
}


- (void) loadAllPosts
{
    
    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    self.postList = [[NSMutableArray alloc] init];
    for (int i=0; i<7; i++)
    {
        
        
        XYZPost *temp = [[XYZPost alloc] initWithShow:(XYZShow *)myDelegate.allShows.shows[i]];
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
