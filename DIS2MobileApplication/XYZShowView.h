
#import <UIKit/UIKit.h>
#import "XYZShow.h"


@protocol XYZShowViewDelegate <NSObject>

- (void) changeTVChannel: (NSUInteger) showId;
-(void) undo:(UIView *)view;
@end

@interface XYZShowView : UIView

@property NSUInteger showId;


@property (strong, nonatomic) IBOutlet UIImageView *showImage;
@property (strong, nonatomic) IBOutlet UILabel *showName;
@property (strong, nonatomic) IBOutlet UILabel *showTimings;
@property (strong, nonatomic) IBOutlet UILabel *imdbRatings;
@property (strong, nonatomic) IBOutlet UILabel *nowWatching;
@property (weak, nonatomic) IBOutlet UILabel *live;
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;


@property id<XYZShowViewDelegate> delegate;



@property (weak, nonatomic) IBOutlet UIView *flickableView;


- (IBAction)comment:(id)sender;

- (id)initWithShow:(XYZShow *)show;


@end
