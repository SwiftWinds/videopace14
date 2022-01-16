#import <AVFoundation/AVFoundation.h>

%hook AVPlayer

- (void)setRate:(float)rate
{
	%orig(rate * 2);
}

- (float)rate
{
	return %orig() * 0.5;
}

%end
