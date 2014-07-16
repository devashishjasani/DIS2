//
//  XYZNowWatchingViewController.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 05/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZNowWatchingPreviewFront.h"
#import "XYZNowWatchingPreviewBack.h"
#import "XYZShow.h"
#import "XYZAllComments.h"

@interface XYZNowWatchingViewController : UIViewController <XYZNowWatchingPreviewFrontDelegate>

@property (strong, nonatomic) XYZNowWatchingPreviewFront *previewFront;
@property (strong, nonatomic) XYZNowWatchingPreviewBack *previewBack;
@property (strong, nonatomic) XYZShow  *show;
@property XYZAllComments *comments;




@property (weak, nonatomic) IBOutlet UIView *previewHolder;

- (XYZShow *) getCurrentlyWatchingShow;
- (IBAction)showAllUpdates:(id)sender;



@end
