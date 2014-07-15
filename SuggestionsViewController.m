//
//  SuggestionsViewController.m
//  DIS2MobileApplication
//
//  Created by Giorgio Pretto on 7/15/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "SuggestionsViewController.h"
#import "XYZShow.h"
#import "XYZShowView.h"
#import "XYZAppDelegate.h"

@interface SuggestionsViewController ()

@end

@implementation SuggestionsViewController

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


    // prepare the data
    NSMutableArray *suggestionsDrama = [NSMutableArray array];
    NSMutableArray *suggestionsSports = [NSMutableArray array];
    NSMutableArray *suggestionsCrime = [NSMutableArray array];
    NSMutableArray *suggestionsAction = [NSMutableArray array];
    NSMutableArray *suggestionsReality = [NSMutableArray array];
    

    
    XYZShow *show=[[XYZShow alloc] init];
    show.channelID=1;
    show.showID=1;
    show.showName= @"Frozen";
    show.facebookLikes = 555666;
    show.imdbRatings = 9.2f;
    show.isLive = YES;
    show.imageURL = @"Frozen.png";
    show.progress = 0.6f;
    show.isLiked = YES;
    show.duration = 91;
    
    [suggestionsAction addObject:show];
    
    XYZShow *show2=[[XYZShow alloc] init];
    show2.channelID=2;
    show2.showID=2;
    show2.showName= @"Edge of Tomorrow";
    show2.facebookLikes = 1555666;
    show2.imdbRatings = 8.3f;
    show2.isLive = NO;
    show2.imageURL = @"Edge.png";
    show2.progress = 0.0f;
    show2.isLiked = NO;
    show2.duration = 85;
    
    [suggestionsCrime addObject:show2];
    
    XYZShow *show3=[[XYZShow alloc] init];
    show3.channelID=3;
    show3.showID=3;
    show3.showName= @"Dr. Strangelove";
    show3.facebookLikes = 955666;
    show3.imdbRatings = 8.0f;
    show3.isLive = NO;
    show3.imageURL = @"StrangeLove.png";
    show3.progress = 0.6f;
    show3.isLiked = NO;
    show3.duration = 207;
    
    [suggestionsReality addObject:show3];
    
    XYZShow *show4=[[XYZShow alloc] init];
    show4.channelID=4;
    show4.showID=4;
    show4.showName= @"Game of Thrones (S04E03)";
    show4.facebookLikes = 19555666;
    show4.imdbRatings = 9.5f;
    show4.isLive = NO;
    show4.imageURL = @"GameOfThrones.png";
    show4.progress = 0.6f;
    show4.isLiked = NO;
    show4.duration = 126;
    
    [suggestionsSports addObject:show4];
    
    XYZShow *show5=[[XYZShow alloc] init];
    show5.channelID=5;
    show5.showID=5;
    show5.showName= @"Matrix";
    show5.facebookLikes = 455666;
    show5.imdbRatings = 9.2f;
    show5.isLive = NO;
    show5.imageURL = @"Matrix.png";
    show5.progress = 0.6f;
    show5.isLiked = NO;
    show5.duration = 163;
    
    [suggestionsSports addObject:show5];
    
    XYZShow *show6=[[XYZShow alloc] init];
    show6.channelID=6;
    show6.showID=6;
    show6.showName= @"Hobbit";
    show6.facebookLikes = 10555666;
    show6.imdbRatings = 9.2f;
    show6.isLive = YES;
    show6.imageURL = @"Hobbit.png";
    show6.progress = 0.6f;
    show6.isLiked = NO;
    show6.duration = 239;
    
    [suggestionsSports addObject:show6];
    
    XYZShow *show7=[[XYZShow alloc] init];
    show7.channelID=7;
    show7.showID=7;
    show7.showName= @"XMen First Class";
    show7.facebookLikes = 10555666;
    show7.imdbRatings = 9.2;
    show7.isLive = YES;
    show7.imageURL = @"Xmen.png";
    show7.progress = 0.6f;
    show7.isLiked = NO;
    show7.duration = 191;
    
    [suggestionsCrime addObject:show7];

    
    
    



    
    
    
    
    
    if ([_category isEqualToString:@"Crime"]) {
        _suggestionsToShow = suggestionsCrime;
    }if ([_category isEqualToString:@"Sport"]) {
        _suggestionsToShow = suggestionsSports;
    }if ([_category isEqualToString:@"Reality"]) {
        _suggestionsToShow = suggestionsReality;
    }if ([_category isEqualToString:@"Action"]) {
        _suggestionsToShow = suggestionsAction;
    }if ([_category isEqualToString:@"Drama"]) {
        _suggestionsToShow = suggestionsDrama;
    }
    
    [self populateTheScrollView];
    

}



- (void) populateTheScrollView
{
    [_horizontalScrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    
    XYZShow *show;
    NSInteger i=0;
    
    for (show in _suggestionsToShow) {
        
        XYZShowView *tempPost = [[XYZShowView  alloc] initWithShow:show];
        tempPost.frame = CGRectMake(_horizontalScrollView.frame.size.width*i, 0, tempPost.frame.size.width, tempPost.frame.size.height);
        tempPost.tag=i++;
        [tempPost setDelegate:self];
        
        [_horizontalScrollView addSubview:tempPost];
        
        
    }
    
    [_horizontalScrollView setContentSize: CGSizeMake(_horizontalScrollView.frame.size.width * i, _horizontalScrollView.frame.size.height)];
    
    
    
}


- (void) removeSuggestion:(NSUInteger)showId
{
    
//    UIView *to= [[self.tabBarController.viewControllers objectAtIndex:0] view];
    
//    [UIView transitionFromView:self.view toView:to duration:0.7 options:UIViewAnimationOptionTransitionCrossDissolve completion:^(BOOL finished) {
//        
//        [to removeFromSuperview];
//        self.tabBarController.selectedViewController = [self.tabBarController.viewControllers objectAtIndex:0];
//    }];
//    
    
    
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



//-(void)viewWillAppear:(BOOL)animated{
//    
//    
//}


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
