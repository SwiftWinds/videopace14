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

- (void)setRate:(float)rate
{
    NSLog(@"videopace14 -- setRate() called!");
	%orig(rate * 2);
}

- (float)rate
{
    NSLog(@"videopace14 -- rate() called!");
	return %orig() * 0.5;
}

%end
