//
//  XYZComment.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 14/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZComment.h"

@implementation XYZComment

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
    self = (XYZComment *)(UITableViewCell *)([[NSBundle mainBundle] loadNibNamed:@"Comment" owner:self options:nil][0]);
        

        
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

@end
