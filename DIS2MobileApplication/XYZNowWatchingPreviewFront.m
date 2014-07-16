//
//  XYZNowWatchingPreviewFront.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 05/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZNowWatchingPreviewFront.h"
#import "XYZAppDelegate.h"
#include "XYZShow.h"
#import "XYZShareView.h"

@implementation XYZNowWatchingPreviewFront

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//        
//    //    self = [[NSBundle mainBundle] loadNibNamed:@"NowWatchingPreviewFront" owner:self options:nil][0];
//        
//        
//    }
//    return self;
//}




- (id) initWithShow: (XYZShow *)show
{
   
    self = [super init];
    if(self)
    {
    
    self.show=show;
    self = [[NSBundle mainBundle] loadNibNamed:@"NowWatchingPreviewFront" owner:self options:nil][0];

    self.showName.text = show.showName;
    self.previewImage.image = [UIImage imageNamed:show.imageURL];
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSString *tempLikes = [formatter stringFromNumber:[NSNumber numberWithLong:show.facebookLikes]];
    self.facebookLikes.text = [NSString stringWithFormat:@"%@ like this",tempLikes];
        
    self.imdbRatings.text = [NSString stringWithFormat:@"%.1f/10",show.imdbRatings];

    self.progressBar.progress = show.progress;

        
    if(show.isLive)
    {
        [self.live setHidden:NO];
        [self.seekBar setHidden:YES];
        
        
        
        
    }
    else
    {
        [self.live setHidden:YES];
        [self.progressBar setHidden:YES];
        
        
    }
   
    
    if(show.isLiked)
    {
        self.likeLabel.text = @"Liked";
        
    }
    else
    {
        self.likeLabel.text = @"Like";
    }
        
    
    }

    
    return self;
}



/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (IBAction)more:(UIButton *)sender {
    NSLog(@"Moar");
}

- (IBAction)seekValueChanged:(id)sender {
    
    [self.delegate seekToTime:self.seekBar.value];
    
}

- (IBAction)like:(id)sender {
    
    NSLog(@"Hello");
    self.show.facebookLikes = self.show.facebookLikes +1;
    self.facebookLikes.text = [NSString stringWithFormat:@"You and %@",self.facebookLikes.text];
    
    

}

- (IBAction)play:(id)sender {
    _pauseButton.hidden=NO;
    _playButton.userInteractionEnabled=NO;
    _playButton.enabled=NO;
    _playButton.hidden=YES;
    _pauseButton.userInteractionEnabled=YES;
    _pauseButton.enabled=YES;    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    NSURL *requestUrl = myDelegate.serverURL;
    NSString *bodyString = [NSString stringWithFormat:@"play"];
    NSMutableURLRequest *userCodeRequest = [NSMutableURLRequest requestWithURL:requestUrl];
    [userCodeRequest setHTTPMethod:@"POST"];
    [userCodeRequest setHTTPBody:[bodyString dataUsingEncoding:NSUTF8StringEncoding]];
    // launch the connection
    [[NSURLConnection alloc] initWithRequest:userCodeRequest delegate:self startImmediately:YES];
}

- (IBAction)pause:(id)sender {
    _playButton.hidden=NO;
    _pauseButton.userInteractionEnabled=NO;
    _pauseButton.enabled=NO;
    _pauseButton.hidden=YES;
    _playButton.userInteractionEnabled=YES;
    _playButton.enabled=YES;
    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    NSURL *requestUrl = myDelegate.serverURL;
    NSString *bodyString = [NSString stringWithFormat:@"pause"];
    NSMutableURLRequest *userCodeRequest = [NSMutableURLRequest requestWithURL:requestUrl];
    [userCodeRequest setHTTPMethod:@"POST"];
    [userCodeRequest setHTTPBody:[bodyString dataUsingEncoding:NSUTF8StringEncoding]];
    // launch the connection
    [[NSURLConnection alloc] initWithRequest:userCodeRequest delegate:self startImmediately:YES];
}



- (IBAction)share:(id)sender {
    NSLog(@"Share");
    
    XYZShareView *sharePopup = [[XYZShareView alloc] initWithShow:self.show];
    sharePopup.frame = CGRectMake(0,20, sharePopup.frame.size.width, sharePopup.frame.size.height);
    [[self.superview superview] addSubview:sharePopup];
    
    
    
    
    
}

- (IBAction)suggest:(id)sender {
    NSLog(@"Saggest");
}
@end
