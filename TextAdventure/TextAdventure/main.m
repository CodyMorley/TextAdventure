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
      // flush line buffer here.
    };
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Game* myGame = [Game new];
        bool gameIsRunning = true;
        int response;
        
        while (gameIsRunning) {
            [myGame instructions];
            
            NSLog(@"\n\nRestart?\n1. Yes\n2. No\nPress 1 or 2 to continue.");
            scanf("%i", &response);
            if (response == 2) {
                break;
            }

        }
    }
    return 0;
}
