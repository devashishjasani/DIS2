//
//  XYZShow.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 08/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZShow.h"

@implementation XYZShow

- (id) init {
    
    self.channelID = 1;
    self.showID = 1;
    self.showName = @"Game of Thrones";
    self.seasonNumber = 4;
    self.episodeNumber = 7;
    self.facebookLikes = 10555666;
    self.imdbRatings = 9.5;
    self.showDescription = @"This is a pretty blah blah show";
    self.isLive = YES;
    self.imageURL = @"GameOfThrones.png";
    self.duration = 30.30;
    self.progress = 0.6;
    
    return self;
}


@end
