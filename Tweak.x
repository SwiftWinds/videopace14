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

%hook AVPlayerController

- (void)setRate:(CGFloat)arg0 {
    NSLog(@"videopace14 -- setRate() called!");
	%orig(arg0 * 2);
}

- (CGFloat)rate {
    NSLog(@"videopace14 -- rate() called!");
	return %orig() * 0.5;
}

%end
