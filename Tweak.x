#import <AVFoundation/AVFoundation.h>

%hook AVPlayer

- (void)setRate:(float)rate
{
	%orig(rate * 2);
}

%end
