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
    BOOL playerIsAlive;
    int health;
    int ans;
}

@property (strong) NSString* name;
@property BOOL playerIsAlive;
@property int health;
@property int ans;

- (void) instructions;
- (void) dayOne;
- (void) dayTwo;
- (void) dayThree;
- (void) printHealth;

@end

NS_ASSUME_NONNULL_END
