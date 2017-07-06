
#import "RNUnmuteVideo.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@implementation RNUnmuteVideo

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(turnSoundOn) {
    AVAudioSession* audioSession = [AVAudioSession sharedInstance];
    [audioSession setActive:YES error:nil];
    [audioSession addObserver:self
                   forKeyPath:@"outputVolumeUp"
                      options:0
                      context:nil];
}

RCT_EXPORT_METHOD(turnSoundOff) {
    AVAudioSession* audioSession = [AVAudioSession sharedInstance];
    [audioSession setActive:YES error:nil];
    [audioSession addObserver:self
                   forKeyPath:@"outputVolumeDown"
                      options:0
                      context:nil];
}

-(void) observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context {
    
    if ([keyPath isEqual:@"outputVolumeUp"]) {
        NSLog(@"volume changed: up");
        NSError *setCategoryError = nil;
        BOOL success = [[AVAudioSession sharedInstance]
                        setCategory: AVAudioSessionCategoryPlayback
                        error: &setCategoryError];
        
        if (!success) { /* handle the error in setCategoryError */ }
    } else if ([keyPath isEqual:@"outputVolumeDown"]){
        NSLog(@"volume changed: down");
        NSError *setCategoryError = nil;
        BOOL success = [[AVAudioSession sharedInstance]
                        setCategory: AVAudioSessionCategoryAmbient
                        error: &setCategoryError];
        
        if (!success) { /* handle the error in setCategoryError *
    }
}

@end
  
