//
//  XYZNowWatchingViewController.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 05/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZNowWatchingViewController.h"
#import "XYZAppDelegate.h"
#import "XYZAllComments.h"

@interface XYZNowWatchingViewController ()

@end

@implementation XYZNowWatchingViewController

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
    // Do any additional setup after loading the view
    
//    self.show = [self getCurrentlyWatchingShow];
//    
//    
//    self.previewFront=[[XYZNowWatchingPreviewFront alloc] initWithShow:self.show];
//    [self.previewHolder.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
//    
//    [self.previewHolder addSubview:self.previewFront];
    //NSLog(self.previewFront.showName);
    
self.tabBarController.tabBar.tintColor = [UIColor colorWithRed:0 green:.2 blue:.2 alpha:1];

}

- (void) viewDidAppear:(BOOL)animate
{
    
    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    self.show = myDelegate.allShows.shows[myDelegate.channelNowPlaying-1];
    self.previewFront=[[XYZNowWatchingPreviewFront alloc] initWithShow:self.show];
    [self.previewFront setDelegate:self];
    [self.previewHolder addSubview:self.previewFront];
 
    
    
    
    
}




- (void) populateViewFront {
    
    
    
}


- (XYZShow *) getCurrentlyWatchingShow {
   
    XYZShow *currentlyWatching;
    currentlyWatching = [[XYZShow alloc] init];
    return currentlyWatching;
    
}

- (IBAction)showAllUpdates:(id)sender {
    
    XYZAllComments  * allComments = [[XYZAllComments alloc] init];
    allComments.frame = CGRectMake(0, 20, allComments.frame.size.width, allComments.frame.size.height);
    [self.view addSubview:allComments];
    
    
    
}


- (void)seekToTime:(float)value
{
    NSUInteger seconds = lroundf(value*self.show.duration);
    
    
    NSLog(@"%d",seconds);
    
    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    NSURL *requestUrl = myDelegate.serverURL;
    NSString *bodyString = [NSString stringWithFormat:@"goToTime:%d",seconds];
    NSMutableURLRequest *userCodeRequest = [NSMutableURLRequest requestWithURL:requestUrl];
    [userCodeRequest setHTTPMethod:@"POST"];
    [userCodeRequest setHTTPBody:[bodyString dataUsingEncoding:NSUTF8StringEncoding]];
    // launch the connection
    [[NSURLConnection alloc] initWithRequest:userCodeRequest delegate:self startImmediately:YES];
    
    
    
}


- (void) flipToPreviewBack
{
 
    
    
}

- (void) flipToPreviewFront
{
    
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
