//
//  XYZShow.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 08/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface XYZShow : NSObject

@property NSInteger channelID; //this could be any channel which provides on demand or live TV
@property NSInteger showID;
@property NSString *showName;
@property NSInteger seasonNumber;
@property NSInteger episodeNumber;
@property NSInteger facebookLikes;
@property float imdbRatings;
@property NSString *showDescription;
@property BOOL isLive; // if yes then live if no then ondemand
@property NSString *imageURL;
@property float duration;
@property NSDate *startTime;
@property NSData *currentTime;
@property NSDate *finishTime;
@property float progress; //value should be between 0.0 and 1.0
@property BOOL isLiked;


@end
