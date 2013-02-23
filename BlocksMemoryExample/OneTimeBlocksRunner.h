//
//  OneTimeBlocksRunner.h
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/02/18.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OneTimeBlocksRunner : NSObject {
    
    void (^runnable)(void);
    
}

@property (nonatomic, copy) void (^runnable)(void);

- (void)run;

@end
