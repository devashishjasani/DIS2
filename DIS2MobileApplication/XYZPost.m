//
//  XYZPost.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 13/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZPost.h"

@implementation XYZPost

- (id) init {
    
    self.postID = 1;
    self.profile = [[XYZProfile alloc] init];
    self.show = [[XYZShow alloc] init];
    self.statusUpdate = @"What an awesome show !!!";
    self.nowWatching = 10;
    
    return self;
}


@end
