#import <AVFoundation/AVFoundation.h>

%hook AVPlayer

- (void)setRate:(float)rate
{
    NSLog(@"videopace14 -- setRate called!");
	%orig(rate * 2);
}

%end
