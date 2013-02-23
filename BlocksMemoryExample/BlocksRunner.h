//
//  BlocksRunner.h
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/01/04.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlocksRunner : NSObject {
    
    void (^runnable)(void);
    
}

@property (nonatomic, copy) void (^runnable)(void);

- (void)run;

@end
