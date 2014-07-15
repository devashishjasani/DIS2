//
//  SuggestionsViewController.h
//  DIS2MobileApplication
//
//  Created by Giorgio Pretto on 7/15/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuggestionsViewController : UIViewController
@property NSString *category;
@property (weak, nonatomic) IBOutlet UIScrollView *horizontalScrollView;

@end
