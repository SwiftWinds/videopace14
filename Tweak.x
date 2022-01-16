#import <AVFoundation/AVFoundation.h>

%hook AVPlayer

- (void)setRate:(float)rate
{
    NSLog(@"videopace14 -- setRate called!");
	%orig(rate * 2);
}

- (float)rate
{
	return %orig() * 0.5;
}

%end
