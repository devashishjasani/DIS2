//
//  XYZAllPosts.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 14/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZAllPosts.h"
#import "XYZPost.h"
#import "XYZAppDelegate.h"

@implementation XYZAllPosts

- (id) init
{
    self.posts = [[NSMutableArray alloc] init];
    
    self.posts = [[NSMutableArray alloc] init];
    
    XYZAppDelegate *myDelegate = (XYZAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    for (int i=0; i<7; i++)
    {
        
        
        XYZPost *temp = [[XYZPost alloc] initWithShow:(XYZShow *)myDelegate.allShows.shows[i]];
        [self.posts addObject:temp];
        
        
    }
    
    
    
    
    
    
    
    return self;
    
    
}

@end
