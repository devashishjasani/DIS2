//
//  XYZNowWatchingPreviewFront.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 05/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZShow.h"

@interface XYZNowWatchingPreviewFront : UIView


@property (strong, nonatomic) IBOutlet UIImageView *previewImage;
@property (strong, nonatomic) IBOutlet UILabel *showName;
@property (strong, nonatomic) IBOutlet UILabel *facebookLikes;
@property (strong, nonatomic) IBOutlet UILabel *imdbRatings;
@property (strong, nonatomic) IBOutlet UILabel *live;
@property (strong, nonatomic) IBOutlet UIProgressView *progressBar;



- (id)initWithShow: (XYZShow *)show;

@end
