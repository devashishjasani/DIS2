//
//  XYZNowWatchingPreviewFront.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 05/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZShow.h"


@protocol XYZNowWatchingPreviewFrontDelegate <NSObject>

- (void)seekToTime:(float)value;

@end


@interface XYZNowWatchingPreviewFront : UIView



@property XYZShow *show;
@property id<XYZNowWatchingPreviewFrontDelegate> delegate;

@property (strong, nonatomic) IBOutlet UIImageView *previewImage;
@property (strong, nonatomic) IBOutlet UILabel *showName;
@property (strong, nonatomic) IBOutlet UILabel *facebookLikes;
@property (strong, nonatomic) IBOutlet UILabel *imdbRatings;
@property (strong, nonatomic) IBOutlet UILabel *live;
@property (strong, nonatomic) IBOutlet UIProgressView *progressBar;
@property (weak, nonatomic) IBOutlet UIButton *likeShowButton;
@property (weak, nonatomic) IBOutlet UILabel *likeLabel;

@property (weak, nonatomic) IBOutlet UISlider *seekBar;




@property (weak, nonatomic) IBOutlet UIButton *shareShowButton;



- (IBAction)seekValueChanged:(id)sender;

- (IBAction)like:(id)sender;
- (IBAction)share:(id)sender;
- (IBAction)suggest:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *more;

- (IBAction)more:(UIButton *)sender;


- (id)initWithShow: (XYZShow *)show;

@end
