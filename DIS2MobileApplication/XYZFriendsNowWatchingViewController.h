//
//  XYZFriendsNowWatchingViewController.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 13/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZPostView.h"


@interface XYZFriendsNowWatchingViewController : UIViewController<UIScrollViewDelegate,XYZPostViewDelegate>

@property (strong, nonatomic) IBOutlet UIScrollView *horizontalScroll;
@property NSMutableArray *postList;





@end
