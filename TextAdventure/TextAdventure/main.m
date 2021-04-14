//
//  main.m
//  TextAdventure
//
//  Created by Cody Morley on 4/14/21.
//

#import <Foundation/Foundation.h>
#import "Game.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Game* myGame = [Game new];
        int response;
        [myGame instructions];
        
        bool gameIsRunning = true;
        while (gameIsRunning) {
            [myGame instructions];
            
            NSLog(@"\n\nRestart?\n1.Yes\n2.No");
            scanf("%i", &response);
            if (response == 2) {
                break;
            }

        }
    }
    return 0;
}
