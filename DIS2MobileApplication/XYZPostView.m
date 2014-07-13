//
//  XYZPostView.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 13/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZPostView.h"
#import "XYZPost.h"

@implementation XYZPostView
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

}
- (IBAction)onSwipeDown:(id)sender {
    NSLog(@"DOWN");
    
}

- (id)initWithPost:(XYZPost *)post
{
    self = [super init];
    if (self) {
        
        self = [[NSBundle mainBundle] loadNibNamed:@"Post" owner:self options:nil][0];
        
        self.status.text = post.statusUpdate;
        self.profileName.text = post.profile.profileName;
        self.profilePicture.image = [UIImage imageNamed:post.profile.imageURL];
        self.showImage.image = [UIImage imageNamed:post.show.imageURL];
        self.showName.text = post.show.showName;
        
        //get timings from post.show and set it here later
        self.showTimings.text = @"9:30-11:30";
        self.imdbRatings.text = [NSString stringWithFormat:@"%.1f/10",post.show.imdbRatings];
        self.nowWatching.text = [NSString stringWithFormat:@"%d watching now", post.nowWatching];
        self.status.text = post.statusUpdate;
        
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
