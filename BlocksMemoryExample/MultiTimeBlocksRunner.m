//
//  MultiTimeBlocksRunner.m
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/02/18.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import "MultiTimeBlocksRunner.h"

@implementation MultiTimeBlocksRunner

@synthesize runnable;
@synthesize target;

- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"MultiTimeBlocksRunner init");
    }
    return self;
}

- (void)dealloc {
    
    NSLog(@"MultiTimeBlocksRunner dealloc");
    
    self.runnable = nil;
    
    [super dealloc];
    
}

- (void)setRunnable:(void(^)(id target))newRunnable target:(id)newTarget {
    
    self.runnable = newRunnable;
    self.target = newTarget;
    
}

- (void)run {
    
    if(runnable)
        runnable(target);
    
}

@end
