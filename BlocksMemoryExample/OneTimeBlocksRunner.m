//
//  OneTimeBlocksRunner.m
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/02/18.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import "OneTimeBlocksRunner.h"

@implementation OneTimeBlocksRunner

@synthesize runnable;

- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"OneTimeBlocksRunner init");
    }
    return self;
}

- (void)dealloc {
    
    NSLog(@"OneTimeBlocksRunner dealloc");
    
    self.runnable = nil;
    
    [super dealloc];
    
}

- (void)run {
    
    if(runnable)
        runnable();
    
    self.runnable = nil;
    
}

@end
