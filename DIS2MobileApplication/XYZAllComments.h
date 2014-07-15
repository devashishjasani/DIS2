//
//  XYZAllComments.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 14/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface XYZAllComments : UIView <UITableViewDelegate,UITableViewDataSource,UITextViewDelegate>


@property (weak, nonatomic) IBOutlet UITableView *commentsTableView;
@property (weak, nonatomic) IBOutlet UITextView *myComment;
@property (weak, nonatomic) IBOutlet UIView *commentsPlaceholfer;

@property (weak, nonatomic) IBOutlet UIButton *doneButton;

- (IBAction)doneCommenting:(id)sender;

@end
