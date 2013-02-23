//
//  InstantBlocksRunner.m
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/02/18.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import "InstantBlocksRunner.h"

@implementation InstantBlocksRunner

- (id)init {
    self = [super init];
    if (self) {
        NSLog(@"InstantBlocksRunner init");
    }
    return self;
}

- (void)dealloc {
    
    NSLog(@"InstantBlocksRunner dealloc");
    
    [super dealloc];
    
}

- (void)run:(void (^)(void))runnable {
    
    if(runnable)
        runnable();
    
}

@end
