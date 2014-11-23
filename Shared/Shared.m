//
//  Shared.m
//  benchboard
//
//  Created by Johnny Sparks on 11/23/14.
//  Copyright (c) 2014 beergrammer. All rights reserved.
//

#import "Shared.h"
#import <mach/mach.h>


unsigned long report_memory(void) {
    unsigned long bytes = 0;
    struct task_basic_info info;
    mach_msg_type_number_t size = sizeof(info);
    kern_return_t kerr = task_info(mach_task_self(),
                                   TASK_BASIC_INFO,
                                   (task_info_t)&info,
                                   &size);
    if( kerr == KERN_SUCCESS ) {
        bytes = info.resident_size;
    }
    return bytes;
}

static NSDate *firstEventDate;

@implementation Shared

+ (void) log:(NSString *) evenName{

    if(!firstEventDate){
        firstEventDate = [NSDate date];
    }
    
    NSLog(@"%@ at %f using %lul bytes", evenName, [[NSDate date] timeIntervalSinceDate:firstEventDate], report_memory());
}

@end
