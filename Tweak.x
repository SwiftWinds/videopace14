#import <AVFoundation/AVFoundation.h>

@import UIKit;

@interface SBHomeScreenViewController : UIViewController
@end

%hook SBHomeScreenViewController

- (void)viewDidLoad {
    %orig;
    NSLog(@"videopace14 -- Loaded");
}

%end

@interface AVPlayer : NSObject
-(void)setRate:(float)rate;
@end

%hook AVPlayer
- (id)init {
    id orig = %orig;

    [self setRate:2];

    NSLOg(@"videopace14 -- AVPlayer init'ed");

    return orig;
}
%end
