//
//  main.m
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/02/24.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BlocksRunner.h"
#import "InstantBlocksRunner.h"
#import "OneTimeBlocksRunner.h"
#import "MultiTimeBlocksRunner.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // Bad Sample
        BlocksRunner *blocksRunner = [[[BlocksRunner alloc] init] autorelease];
        NSLog(@"blocksRunner retainCount: %ld", [blocksRunner retainCount]);
        blocksRunner.runnable = ^{
            NSLog(@"blocksRunner: %@", blocksRunner);
        };
        NSLog(@"blocksRunner retainCount: %ld", [blocksRunner retainCount]);
        [blocksRunner run];
        
        // InstantBlocksRunner
        InstantBlocksRunner *instantBlocksRunner  = [[[InstantBlocksRunner alloc] init] autorelease];
        NSLog(@"instantBlocksRunner retainCount: %ld", [instantBlocksRunner retainCount]);
        [instantBlocksRunner run: ^{
            NSLog(@"instantBlocksRunner: %@", instantBlocksRunner);
        }];
        
        // OneTimeBlocksRunner
        OneTimeBlocksRunner *oneTimeBlocksRunner = [[[OneTimeBlocksRunner alloc] init] autorelease];
        NSLog(@"oneTimeBlocksRunner retainCount: %ld", [oneTimeBlocksRunner retainCount]);
        oneTimeBlocksRunner.runnable = ^{
            NSLog(@"oneTimeBlocksRunner: %@", oneTimeBlocksRunner);
        };
        NSLog(@"oneTimeBlocksRunner retainCount: %ld", [oneTimeBlocksRunner retainCount]);
        [oneTimeBlocksRunner run];
        
        // MultiTimeBlocksRunner
        MultiTimeBlocksRunner *multiTimeBlocksRunner = [[[MultiTimeBlocksRunner alloc] init] autorelease];
        NSLog(@"multiTimeBlocksRunner retainCount: %ld", [multiTimeBlocksRunner retainCount]);
        [multiTimeBlocksRunner setRunnable:^(id target){
            NSLog(@"multiTimeBlocksRunner: %@", target);
        } target:multiTimeBlocksRunner];
        NSLog(@"multiTimeBlocksRunner retainCount: %ld", [multiTimeBlocksRunner retainCount]);
        [multiTimeBlocksRunner run];
        [multiTimeBlocksRunner run];
        [multiTimeBlocksRunner run];
        
    }
    return 0;
}

