//
//  main.m
//  storyboardfree
//
//  Created by Johnny Sparks on 11/22/14.
//  Copyright (c) 2014 beergrammer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "Shared.h"


int main(int argc, char * argv[]) {
    @autoreleasepool {
        [Shared log:@"main"];
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
