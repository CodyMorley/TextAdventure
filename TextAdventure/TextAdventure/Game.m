//
//  Game.m
//  TextAdventure
//
//  Created by Cody Morley on 4/14/21.
//

#import "Game.h"

@implementation Game
@synthesize name, playerIsAlive, health, ans;

- (void) instructions
{
    NSLog(@"\n\nYour plane crashed on an island. Help is coming in three days. Try and survive.\nType in your first name and press ENTER to continue.");
    char firstName[20];
    scanf("%s", &firstName);
    
    name = [NSString stringWithCString:firstName
                              encoding:NSASCIIStringEncoding];
    NSLog(@"Your name is: %@. Press ENTER to continue.", name);
    waitOnCR();
}
- (void) dayOne
{
    playerIsAlive = true;
    while (playerIsAlive) {
        // 2 - Scenario1
        // 3 - Answer1
        // 4 - Scenario2
        // 5 - Answer2
        // 6 - Day Completion Message

    }
}
- (void) dayTwo
{
    while (playerIsAlive) {
        // 2 - Scenario1
        // 3 - Answer1
        // 4 - Scenario2
        // 5 - Answer2
        // 6 - Day Completion Message

    }
}
- (void) dayThree
{
    while (playerIsAlive) {
        // 2 - Scenario1
        // 3 - Answer1
        // 4 - Scenario2
        // 5 - Answer2
        // 6 - Day Completion Message

    }
}


@end
