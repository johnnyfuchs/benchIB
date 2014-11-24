//
//  Shared.m
//  benchboard
//
//  Created by Johnny Sparks on 11/23/14.
//  Copyright (c) 2014 beergrammer. All rights reserved.
//

#import "Shared.h"
#import <mach/mach.h>

static const NSString *memoryKey = @"mem";
static const NSString *timeKey = @"time";

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
static NSMutableArray *data;

@implementation Shared

+ (void) log:(NSString *) evenName{

    if(!firstEventDate){
        firstEventDate = [NSDate date];
    }
    
    if(!data){
        data = [NSMutableArray new];
    }
    
    NSTimeInterval elapsed = [[NSDate date] timeIntervalSinceDate:firstEventDate];
    unsigned long mem = report_memory();
    
    NSDictionary *event = @{ memoryKey : @(mem), timeKey : @(elapsed)};

    [data addObject:event];
    if(data.count >= 100){
        [self printTabbed];
        exit(0);
    }
}

+ (void) printTabbed {
    
    NSMutableString *s = [@"\n\n" mutableCopy];
    for(NSDictionary *item in data){
        [s appendString:[NSString stringWithFormat:@"\n%@\t%@", item[timeKey], item[memoryKey]]];
    }
    NSLog(@"%@", s);
}

+ (void) printJSON {
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:data options:NSJSONWritingPrettyPrinted error:nil];
    NSLog(@"%@", [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding]);
}



@end
