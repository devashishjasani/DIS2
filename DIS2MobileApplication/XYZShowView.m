//
//  XYZPostView.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 13/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZShowView.h"
#import "XYZShow.h"
#import "XYZAllComments.h"

@implementation XYZShowView
//
//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//    }
//    return self;
//}






- (IBAction)onSwipeUp:(id)sender {
    NSLog(@"UP");
    
//        [UIView transitionFromView:self toView:nil duration:0.7f options:UIViewAnimationOptionTransitionCurlUp completion:nil];
    
    [UIView animateWithDuration:0.7f animations:^
    {
        self.frame = CGRectMake(self.frame.size.width*self.tag, -400, self.frame.size.width, self.frame.size.height);
        
    } completion:^(BOOL finished)
    {
        self.frame = CGRectMake(self.frame.size.width*self.tag, 0, self.frame.size.width, self.frame.size.height);
        [self.delegate changeTVChannel:self.showId];
        
        
    }];
    
    
    
    
    
    
    

}
- (IBAction)onSwipeDown:(id)sender {
    NSLog(@"DOWN");
    //        [UIView transitionFromView:self toView:nil duration:0.7f options:UIViewAnimationOptionTransitionCurlUp completion:nil];
    
    UIView *view= (UIView*)sender;
    
    // create the view
    UIView *confirmRemoveView = [[UIView alloc] initWithFrame:view.frame];
    confirmRemoveView.backgroundColor = [UIColor lightGrayColor];
    //add label
    
    
    // add the buttons
    UIButton * undoButton = [UIButton buttonWithType:UIButtonTypeSystem];
    undoButton.titleLabel.text = @"Undo";
    
    UIButton * removeButton = [UIButton buttonWithType:UIButtonTypeSystem];
    undoButton.titleLabel.text = @"Remove";
    
    
    [UIView animateWithDuration:0.7f animations:^
     {
         self.frame = CGRectMake(self.frame.size.width*self.tag, +500, self.frame.size.width, self.frame.size.height);
         
     } completion:^(BOOL finished)
     {
         self.frame = CGRectMake(self.frame.size.width*self.tag, 0, self.frame.size.width, self.frame.size.height);
         [self.delegate changeTVChannel:self.showId];
         
         
     }];

    
    
    
    
    
    
    
    
    
    
    
    
    // slide down the show
    
    [UIView animateWithDuration:0.7f animations:^
     {
         self.frame = CGRectMake(self.frame.size.width*self.tag, +500, self.frame.size.width, self.frame.size.height);
         
     } completion:^(BOOL finished)
     {
         self.frame = CGRectMake(self.frame.size.width*self.tag, 0, self.frame.size.width, self.frame.size.height);
         [self.delegate changeTVChannel:self.showId];
         
         
     }];
    


    
    
}



- (IBAction)comment:(id)sender {
    
    XYZAllComments *allComments = [[XYZAllComments alloc] init];
    [self addSubview:allComments];
    
    NSLog(@"load comments");
    
    
    
}

- (id)initWithShow:(XYZShow *)show
{
    self = [super init];
    if (self) {
        
        self = [[NSBundle mainBundle] loadNibNamed:@"Show" owner:self options:nil][0];
        
//        self.status.text = post.statusUpdate;
//        self.profileName.text = post.profile.profileName;
//        self.profilePicture.image = [UIImage imageNamed:post.profile.imageURL];
        self.showImage.image = [UIImage imageNamed:show.imageURL];
        self.showName.text = show.showName;
        
        //get timings from post.show and set it here later
        if(show.isLive)
        {
            self.showTimings.text = @"9:30-11:30";
            self.progressBar.progress = show.progress;
            
        }
        else
        {
            self.showTimings.text = @"On Demand";
            [self.live setHidden:YES];
            [self.progressBar setHidden:YES];
        }

        
        self.imdbRatings.text = [NSString stringWithFormat:@"%.1f/10",show.imdbRatings];
//        self.nowWatching.text = [NSString stringWithFormat:@"%d watching now", post.nowWatching];
//        self.status.text = post.statusUpdate;
        self.showId=show.showID;
        
        UISwipeGestureRecognizer *swipeGestureUp = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipeUp:)];
        [swipeGestureUp setDirection:UISwipeGestureRecognizerDirectionUp];
        UISwipeGestureRecognizer *swipeGestureDown= [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(onSwipeDown:)];
        [swipeGestureDown setDirection:UISwipeGestureRecognizerDirectionDown];
        
        [self addGestureRecognizer:swipeGestureUp];
        [self addGestureRecognizer:swipeGestureDown];
    
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



@end
