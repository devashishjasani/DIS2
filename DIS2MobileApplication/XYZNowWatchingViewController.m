//
//  XYZNowWatchingViewController.m
//  DIS2MobileApplication
//
//  Created by Devashish Jasani on 05/07/14.
//  Copyright (c) 2014 Devashish Jasani. All rights reserved.
//

#import "XYZNowWatchingViewController.h"

@interface XYZNowWatchingViewController ()

@end

@implementation XYZNowWatchingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view
    
    self.show = [self getCurrentlyWatchingShow];
    
    
    self.previewFront=[[XYZNowWatchingPreviewFront alloc] initWithShow:self.show];

    [self.previewHolder addSubview:self.previewFront];
    //NSLog(self.previewFront.showName);
    


}





- (void) populateViewFront {
    
    
    
}


- (XYZShow *) getCurrentlyWatchingShow {
   
    XYZShow *currentlyWatching;
    currentlyWatching = [[XYZShow alloc] init];
    return currentlyWatching;
    
}


- (void) flipToPreviewBack
{
 
    
    
}

- (void) flipToPreviewFront
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
