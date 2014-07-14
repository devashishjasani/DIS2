//
//  XYZAppDelegate.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 04/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZAllShows.h"
#import "XYZAllPosts.h"

@interface XYZAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property XYZAllShows *allShows;
@property XYZAllPosts *allPosts;

@end
