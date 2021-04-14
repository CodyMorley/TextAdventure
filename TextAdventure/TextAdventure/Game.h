//
//  Game.h
//  TextAdventure
//
//  Created by Cody Morley on 4/14/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Game : NSObject {
    NSString* name;
}

- (void) instructions;

- (void) waitOnCR; 

@end

NS_ASSUME_NONNULL_END
