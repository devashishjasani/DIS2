//
//  XYZShareView.m
//  DIS2MobileApplication
//
//  Created by Kamalika Dutta on 7/16/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZShareView.h"
#import "XYZAppDelegate.h"
#import "XYZPost.h"

@implementation XYZShareView
//
//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//    }
//    return self;
//}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (id) initWithShow:(XYZShow *)shareShow {
    
    self = [super init];
    
    
    self = [[NSBundle mainBundle] loadNibNamed:@"Share" owner:self options:nil][0];
    self.placeHolderView.layer.cornerRadius = 8;
    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    self.show = myDelegate.allShows.shows[myDelegate.channelNowPlaying-1];
    
    self.showImage.image = [UIImage imageNamed:self.show.imageURL];
    self.showName.text = self.show.showName;
    self.shareText.delegate = self;
    [self.shareText becomeFirstResponder];
    [self.shareText selectAll:self.shareText.text];

    
    
    return self;
    
}






- (IBAction)share:(id)sender {
    
    
    XYZPost *post = [[XYZPost alloc] initWithShow:self.show];
    post.statusUpdate = self.shareText.text;
    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    [myDelegate.allPosts.posts addObject:post];
    [self removeFromSuperview];
    
    
    

    
}
@end
