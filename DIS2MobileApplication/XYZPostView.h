//
//  XYZPostView.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 13/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZPost.h"

@interface XYZPostView : UIView 

@property (strong, nonatomic) IBOutlet UIImageView *profilePicture;
@property (strong, nonatomic) IBOutlet UILabel *profileName;
@property (strong, nonatomic) IBOutlet UILabel *status;
@property (strong, nonatomic) IBOutlet UIImageView *showImage;
@property (strong, nonatomic) IBOutlet UILabel *showName;
@property (strong, nonatomic) IBOutlet UILabel *showTimings;
@property (strong, nonatomic) IBOutlet UILabel *imdbRatings;
@property (strong, nonatomic) IBOutlet UILabel *nowWatching;
@property UIView *hi;
@property (weak, nonatomic) IBOutlet UIView *flickableView;

@property (strong, nonatomic) IBOutlet UISwipeGestureRecognizer *swipeUpGesture;

- (IBAction)onSwipeUp:(id)sender;

- (id)initWithPost:(XYZPost *)post;


@end
