//
//  XYZAllShows.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 14/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZAllShows.h"
#import "XYZShow.h"

@implementation XYZAllShows

- (id)init
{
    
    self.shows = [[NSMutableArray alloc] init];
    
    
    XYZShow *show=[[XYZShow alloc] init];
    show.channelID=1;
    show.showID=1;
    show.showName= @"Frozen";
    show.facebookLikes = 555666;
    show.imdbRatings = 9.2f;
    show.isLive = YES;
    show.imageURL = @"Frozen.png";
    show.progress = 0.6f;
    show.isLiked = YES;
    show.duration = 91;
    
    [self.shows addObject:show];
    
    XYZShow *show2=[[XYZShow alloc] init];
    show2.channelID=2;
    show2.showID=2;
    show2.showName= @"Edge of Tomorrow";
    show2.facebookLikes = 1555666;
    show2.imdbRatings = 8.3f;
    show2.isLive = NO;
    show2.imageURL = @"Edge.png";
    show2.progress = 0.0f;
    show2.isLiked = NO;
    show2.duration = 85;
    
    [self.shows addObject:show2];
    
    XYZShow *show3=[[XYZShow alloc] init];
    show3.channelID=3;
    show3.showID=3;
    show3.showName= @"Dr. Strangelove";
    show3.facebookLikes = 955666;
    show3.imdbRatings = 8.0f;
    show3.isLive = NO;
    show3.imageURL = @"StrangeLove.png";
    show3.progress = 0.6f;
    show3.isLiked = NO;
    show3.duration = 207;
    
    [self.shows addObject:show3];
    
    XYZShow *show4=[[XYZShow alloc] init];
    show4.channelID=4;
    show4.showID=4;
    show4.showName= @"Game of Thrones (S04E03)";
    show4.facebookLikes = 19555666;
    show4.imdbRatings = 9.5f;
    show4.isLive = NO;
    show4.imageURL = @"GameOfThrones.png";
    show4.progress = 0.6f;
    show4.isLiked = NO;
    show4.duration = 126;
    
    [self.shows addObject:show4];
    
    XYZShow *show5=[[XYZShow alloc] init];
    show5.channelID=5;
    show5.showID=5;
    show5.showName= @"Matrix";
    show5.facebookLikes = 455666;
    show5.imdbRatings = 9.2f;
    show5.isLive = NO;
    show5.imageURL = @"Matrix.png";
    show5.progress = 0.6f;
    show5.isLiked = NO;
    show5.duration = 163;
    
    [self.shows addObject:show5];
    
    XYZShow *show6=[[XYZShow alloc] init];
    show6.channelID=6;
    show6.showID=6;
    show6.showName= @"Hobbit";
    show6.facebookLikes = 10555666;
    show6.imdbRatings = 9.2f;
    show6.isLive = YES;
    show6.imageURL = @"Hobbit.png";
    show6.progress = 0.6f;
    show6.isLiked = NO;
    show6.duration = 239;
    
    [self.shows addObject:show6];
    
    XYZShow *show7=[[XYZShow alloc] init];
    show7.channelID=7;
    show7.showID=7;
    show7.showName= @"XMen First Class";
    show7.facebookLikes = 10555666;
    show7.imdbRatings = 9.2;
    show7.isLive = YES;
    show7.imageURL = @"Xmen.png";
    show7.progress = 0.6f;
    show7.isLiked = NO;
    show7.duration = 191;
    
    [self.shows addObject:show7];
    
    XYZShow *show8=[[XYZShow alloc] init];
    show8.channelID=8;
    show8.showID=8;
    show8.showName= @"Germany vs Brasil";
    show8.facebookLikes = 10555666;
    show8.imdbRatings = 9.2;
    show8.isLive = YES;
    show8.imageURL = @"GermanyBrazil.png";
    show8.progress = 6700.6f;
    show8.isLiked = NO;
    show8.duration = 191;
    
    [self.shows addObject:show8];
   
    return self;
    
}


@end
