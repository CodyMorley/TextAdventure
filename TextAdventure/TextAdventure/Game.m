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
        
        NSLog(@"\n\nDAY:01\n\nWith blurred vision, you look around to gather your surroundings.\nYou are lost.\nThe beach is rough, and the salty water is irritating your skin. You recall the plane crash.\n1.Walk into the jungle.\n2.Sleep and regain strength before walking into jungle.");
        scanf("%i", &ans);
        waitOnCR();
        
        if (ans == 2) {
            NSLog(@"\n\nYou feel well rested. However, you are hungry and freezing without shelter. It is too dark to build a shelter. You try to sleep in a tree, but you are attacked by monkeys.\nPress enter to continue.");
            waitOnCR();
            health = 0;
            NSLog(@"You have died at the hands of the monkeys.");
            playerIsAlive = false;
            break;
        }
        
        NSLog(@"\n\nInside the jungle, you find a bush with little black fruit, at its base are white speckled mushrooms.\n1.Eat mushrooms.\n2.Eat berries.");
        scanf("%i", &ans);
        waitOnCR();

        if (ans == 1) {
            NSLog(@"\n\nYou are left with a bitter taste in your mouth and a gurgling in you stomach.\nPress enter to continue.");
            health = health - 10;
            NSLog(@"Health decreased.");
            waitOnCR();
        } else {
            NSLog(@"\n\nThe sweetness of the berries is quite savory considering all the seawater you consumed.\nPress enter to continue.");
            waitOnCR();
            health = health + 10;
            NSLog(@"Health Increased.");
        }
        
        NSLog(@"\n\nYou fall asleep beneath the tree.\nDay:01 was successfully completed.\nPress enter to continue.");
        waitOnCR();
        break;
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
