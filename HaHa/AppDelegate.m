//
//  AppDelegate.m
//  HaHa
//
//  Created by Marcos Trovilho on 5/12/12.
//  see LICENSE for details.
//

#import "AppDelegate.h"
#import "NelsonViewController.h"


@implementation AppDelegate
@synthesize window = _window;

-(BOOL)application:(UIApplication*)application didFinishLaunchingWithOptions:(NSDictionary*)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    NelsonViewController *nelsonViewController = [[NelsonViewController alloc] init];
    [self.window setRootViewController:nelsonViewController];
    [self.window makeKeyAndVisible];
    return YES;
}

@end
