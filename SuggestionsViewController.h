//
//  SuggestionsViewController.h
//  DIS2MobileApplication
//
//  Created by Giorgio Pretto on 7/15/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZShowView.h"

@interface SuggestionsViewController : UIViewController<UIScrollViewDelegate,XYZShowViewDelegate>
@property NSString *category;
@property (weak, nonatomic) IBOutlet UIScrollView *horizontalScrollView;
@property NSArray *suggestionsToShow;

@end
