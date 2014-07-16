//
//  XYZAllComments.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 14/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZAllComments.h"
#import "XYZComment.h"

@implementation XYZAllComments

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    
    self = (XYZAllComments *)([[NSBundle mainBundle] loadNibNamed:@"AllComments" owner:self options:nil][0]);
    self.commentsTableView.delegate = self;
    self.commentsTableView.dataSource = self;
    self.myComment.delegate = self;
    self.allCommentsForTableView = [[NSMutableArray alloc] init];
    self.commentsTableView.layer.cornerRadius = 8;
    
    for (int i=0; i<4; i++) {
        XYZComment *comment = [[XYZComment alloc] init];
        [self.allCommentsForTableView addObject:comment];
    }
    
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    XYZComment *comment = [self.allCommentsForTableView objectAtIndex:indexPath.row];
    return comment;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.allCommentsForTableView.count;
    
}
//
//-(BOOL)textFieldShouldReturn:(UITextField *)textField {
//    [textField resignFirstResponder];
//    return YES;
//}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    
    //[self.superview setHidden:YES];
   // self.commentsPlaceholfer.frame = CGRectMake(0, 0, self.commentsPlaceholfer.frame.size.width, self.commentsPlaceholfer.frame.size.height-200);
    self.myComment.frame = CGRectMake(self.myComment.frame.origin.x, self.myComment.frame.origin.y - 170, self.myComment.frame.size.width, self.myComment.frame.size.height);
    self.commentsTableView.frame = CGRectMake(self.commentsTableView.frame.origin.x, self.commentsTableView.frame.origin.y, self.commentsTableView.frame.size.width, self.commentsTableView.frame.size.height-170);
    self.myComment.frame = CGRectMake(self.myComment.frame.origin.x, self.myComment.frame.origin.y, self.myComment.frame.size.width, self.myComment.frame.size.height);
    self.doneButton.frame = CGRectMake(self.doneButton.frame.origin.x, self.doneButton.frame.origin.y - 170, self.doneButton.frame.size.width, self.doneButton.frame.size.height);

    
    if([self.myComment.text isEqual: @"Write your Comment here"])
    {
        self.myComment.text = @"";
    }
    
    
    
    
}




- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    if ([text isEqualToString:@"\n"]) {
        [textView resignFirstResponder];
        [self doneCommenting:nil];
    }
    return YES;

}













- (IBAction)doneCommenting:(id)sender {
    
    
    if([self.myComment resignFirstResponder] == YES)
    {
    self.myComment.frame = CGRectMake(self.myComment.frame.origin.x, self.myComment.frame.origin.y + 170, self.myComment.frame.size.width, self.myComment.frame.size.height);
    self.commentsTableView.frame = CGRectMake(self.commentsTableView.frame.origin.x, self.commentsTableView.frame.origin.y + 170, self.commentsTableView.frame.size.width, self.commentsTableView.frame.size.height);
    self.doneButton.frame = CGRectMake(self.doneButton.frame.origin.x, self.doneButton.frame.origin.y +170, self.doneButton.frame.size.width, self.doneButton.frame.size.height);
    }

    
    NSString *rawString = self.myComment.text;
    NSCharacterSet *whitespace = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmed = [rawString stringByTrimmingCharactersInSet:whitespace];
    if ([trimmed length] == 0) {
               self.myComment.text = @"Write your Comment here";
    }
    else if (![self.myComment.text isEqual: @"Write your Comment here"]) {
        XYZComment *newComment = [[XYZComment alloc] init];
        newComment.commentText.text = self.myComment.text;
        
        
        [self.allCommentsForTableView addObject:newComment];
        NSArray *paths = [NSArray arrayWithObject:[NSIndexPath indexPathForRow:[self.allCommentsForTableView count]-1 inSection:0]];
        [[self commentsTableView] insertRowsAtIndexPaths:paths withRowAnimation:UITableViewRowAnimationTop];
        [self.commentsTableView endUpdates];
        [self.commentsTableView scrollToRowAtIndexPath:[NSIndexPath indexPathForRow:[self.allCommentsForTableView count]-1 inSection:0] atScrollPosition:UITableViewScrollPositionBottom animated:YES];

        self.myComment.text = @"Write your Comment here";
        
        //[self.commentsTableView reloadData];
    }
    

    
    
    
    
    

    
    
}
- (IBAction)close:(id)sender {
    
    
    [UIView animateWithDuration:1.5 delay:0.4 options:UIViewAnimationOptionShowHideTransitionViews animations:^{
       [self removeFromSuperview];
    }completion:nil];
    
    
    
    
}
@end
