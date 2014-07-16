//
//  XYZShareView.h
//  DIS2MobileApplication
//
//  Created by Kamalika Dutta on 7/16/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XYZShow.h"

@interface XYZShareView : UIView <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIImageView *showImage;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UITextView *shareText;
@property (weak, nonatomic) IBOutlet UILabel *showName;
@property (weak, nonatomic) IBOutlet UIView *placeHolderView;
- (IBAction)share:(id)sender;
- (id) initWithShow:(XYZShow *)shareShow;

@property XYZShow *show;





@end
