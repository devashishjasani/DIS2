//
//  XYZNowWatchingPreviewFront.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 05/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZNowWatchingPreviewFront.h"
#include "XYZShow.h"

@implementation XYZNowWatchingPreviewFront

//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//        
//    //    self = [[NSBundle mainBundle] loadNibNamed:@"NowWatchingPreviewFront" owner:self options:nil][0];
//        
//        
//    }
//    return self;
//}




- (id) initWithShow: (XYZShow *)show
{
   
    self = [super init];
    if(self)
    {
    
    self.show=show;
    self = [[NSBundle mainBundle] loadNibNamed:@"NowWatchingPreviewFront" owner:self options:nil][0];

    self.showName.text = show.showName;
    self.previewImage.image = [UIImage imageNamed:show.imageURL];
    
    NSNumberFormatter *formatter = [[NSNumberFormatter alloc] init];
    [formatter setNumberStyle:NSNumberFormatterDecimalStyle];
    NSString *tempLikes = [formatter stringFromNumber:[NSNumber numberWithLong:show.facebookLikes]];
    self.facebookLikes.text = [NSString stringWithFormat:@"%@ like this",tempLikes];
        
    self.imdbRatings.text = [NSString stringWithFormat:@"%.1f/10",show.imdbRatings];

    if(show.isLive)
    {
        [self.live setHidden:NO];
    }
    else
    {
        [self.live setHidden:YES];
    }
    self.progressBar.progress = show.progress;
        

    
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

- (IBAction)more:(UIButton *)sender {
    NSLog(@"Moar");
}

- (IBAction)like:(id)sender {
    
    NSLog(@"Hello");
    self.show.facebookLikes = self.show.facebookLikes +1;
    self.facebookLikes.text = [NSString stringWithFormat:@"You and %@",self.facebookLikes.text];
    
    

}

- (IBAction)share:(id)sender {
    NSLog(@"Sher");
}

- (IBAction)suggest:(id)sender {
    NSLog(@"Saggest");
}
@end
