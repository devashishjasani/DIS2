//
//  XYZPost.h
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 13/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "XYZShow.h"
#import "XYZProfile.h"

@interface XYZPost : NSObject

@property NSUInteger postID;
@property XYZShow *show;
@property XYZProfile *profile;
@property NSString *statusUpdate;
@property NSUInteger nowWatching;



@end
