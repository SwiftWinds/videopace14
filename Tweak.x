#import <AVFoundation/AVFoundation.h>

%hook AVPlayer

- (void)setRate:(float)rate
{
	PrepareSettings();
	%orig(rate * 2);
}

- (float)rate
{
	PrepareSettings();
	return %orig() * 0.5;
}

%end
