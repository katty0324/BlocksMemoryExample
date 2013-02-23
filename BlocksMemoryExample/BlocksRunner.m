//
//  BlocksRunner.m
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/01/04.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import "BlocksRunner.h"

@implementation BlocksRunner

@synthesize runnable;

- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"BlocksRunner init");
    }
    return self;
}

- (void)dealloc {
    
    NSLog(@"BlocksRunner dealloc");
    
    self.runnable = nil;
    
    [super dealloc];
    
}

- (void)run {
    
    if(runnable)
        runnable();
    
}

@end
