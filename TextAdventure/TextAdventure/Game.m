//
//  Game.m
//  TextAdventure
//
//  Created by Cody Morley on 4/14/21.
//

#import "Game.h"

@implementation Game

- (void) instructions
{
    NSLog(@"\n\nYour plane crashed on an island. Help is coming in three days. Try and survive.\nType in your first name and press ENTER to continue");
    char firstName[20];
    scanf("%s", &firstName);
    
    name = [NSString stringWithCString:firstName
                              encoding:NSASCIIStringEncoding];
    NSLog(@"Your name is: %@. Press ENTER to continue", name);
    [self waitOnCR];
}

- (void) waitOnCR
{
    while( getchar() != '\n') {
      // flush line buffer here.
    };
}

@end
