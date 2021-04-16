//
//  main.m
//  TextAdventure
//
//  Created by Cody Morley on 4/14/21.
//

#import <Foundation/Foundation.h>
#import "Game.h"

void waitOnCR (void)
{
    while( getchar() != '\n') {
      // this will flush the line buffer and wait for carriage return.
    };
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Game* myGame = [Game new];
        bool gameIsRunning = true;
        int response;
        
        myGame.health = 100;
        
        while (gameIsRunning) {
            [myGame instructions];
            [myGame dayOne];
            [myGame dayTwo];
            [myGame dayThree];
            
            if (myGame.health <= 0) {
                NSLog(@"\n\nYou have died.\nPress ENTER for the next dialogue.");
                waitOnCR();
            }
            
            NSLog(@"\n\nRestart?\n1. Yes\n2. No\nPress 1 or 2 to continue.");
            scanf("%i", &response);
            if (response == 2) {
                break;
            }

        }
    }
    return 0;
}
