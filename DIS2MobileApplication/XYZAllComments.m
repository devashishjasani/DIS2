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
    
    XYZComment *comment = [[XYZComment alloc] init];
    return comment;
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 10;
    
}
//
//-(BOOL)textFieldShouldReturn:(UITextField *)textField {
//    [textField resignFirstResponder];
//    return YES;
//}

- (void)textViewDidBeginEditing:(UITextView *)textView{
    
    //[self.superview setHidden:YES];
    self.commentsPlaceholfer.frame = CGRectMake(0, 0, self.commentsPlaceholfer.frame.size.width, self.commentsPlaceholfer.frame.size.height-200);
    self.myComment.frame = CGRectMake(self.myComment.frame.origin.x, self.myComment.frame.origin.y - 200, self.myComment.frame.size.width, self.myComment.frame.size.height);
    
    
}

- (IBAction)doneCommenting:(id)sender {
    
    [self.myComment resignFirstResponder];
    
}
@end
