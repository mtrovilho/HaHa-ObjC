//
//  NelsonViewController.m
//  HaHa
//
//  Created by Marcos Trovilho on 5/12/12.
//  see LICENSE for details.
//

#import "NelsonViewController.h"
#import <AVFoundation/AVAudioPlayer.h>


@interface NelsonViewController() {
    AVAudioPlayer *player;
}
-(IBAction)hahaBtnTouched:(id)sender;
@end



@implementation NelsonViewController

-(id)init {
    return [self initWithNibName:NSStringFromClass([self class]) bundle:nil];
}

-(void)viewDidLoad {
    NSString *hahaPath = [[NSBundle mainBundle] pathForResource:@"haha" ofType:@"mp3"];
    NSURL *hahaURL = [[NSURL alloc] initFileURLWithPath:hahaPath];
    
    NSError *error = nil;
    player = [[AVAudioPlayer alloc] initWithContentsOfURL:hahaURL error:&error];
    [player prepareToPlay];
}

-(void)hahaBtnTouched:(id)sender {
    if ([player isPlaying]) { [player stop]; [player prepareToPlay]; }
    else { [player play]; }
}

@end
