//
//  InstantBlocksRunner.h
//  BlocksMemoryExample
//
//  Created by Kataoka Naoyuki on 13/02/18.
//  Copyright (c) 2013年 Kataoka Naoyuki. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InstantBlocksRunner : NSObject

- (void)run:(void (^)(void))runnable;

@end
