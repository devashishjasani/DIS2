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

@interface XYZNowWatchingViewController : UIViewController

@property (strong, nonatomic) XYZNowWatchingPreviewFront *previewFront;
@property (strong, nonatomic) XYZNowWatchingPreviewBack *previewBack;
@property (strong, nonatomic) XYZShow  *show;



@property (weak, nonatomic) IBOutlet UIView *previewHolder;

- (XYZShow *) getCurrentlyWatchingShow;



@end
