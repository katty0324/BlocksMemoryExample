//
//  MultiTimeBlocksRunner.h
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/02/18.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MultiTimeBlocksRunner : NSObject {
    
    void(^runnable)(id target);
    id target;
    
}

@property (nonatomic, copy) void(^runnable)(id target);
@property (nonatomic, assign) id target;

- (void)setRunnable:(void(^)(id target))newRunnable target:(id)newTarget;
- (void)run;

@end
