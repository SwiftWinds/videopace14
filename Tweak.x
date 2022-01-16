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

%hook AVPlayer
- (id)init {
    id orig = %orig;

    [self setRate:2];

    NSLog(@"videopace14 -- AVPlayer init'ed");

    return orig;
}
%end
