//
//  Game.h
//  TextAdventure
//
//  Created by Cody Morley on 4/14/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

void waitOnCR(void);

@interface Game: NSObject
{
    NSString* name;
}

@property (strong) NSString* name;

- (void) instructions;

@end

NS_ASSUME_NONNULL_END
