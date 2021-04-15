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
            NSLog(@"\n\nYou feel well rested. However, you are hungry and freezing without shelter. It is too dark to build a shelter. You try to sleep in a tree, but you are attacked by monkeys.\nPress ENTER to continue.");
            waitOnCR();
            health = 0;
            NSLog(@"\nThe vicious screeches of the monkeys are the last thing you hear.");
            playerIsAlive = false;
            break;
        }
        
        NSLog(@"\n\nInside the jungle, you find a bush with little black fruit, at its base are white speckled mushrooms.\n1.Eat mushrooms.\n2.Eat berries.");
        scanf("%i", &ans);
        waitOnCR();

        if (ans == 1) {
            NSLog(@"\n\nYou are left with a bitter taste in your mouth and a gurgling in you stomach.\nPress ENTER to continue.");
            health = health - 10;
            NSLog(@"Health decreased.");
            waitOnCR();
        } else {
            NSLog(@"\n\nThe sweetness of the berries is quite savory considering all the seawater you consumed.\nPress ENTER to continue.");
            waitOnCR();
            health = health + 10;
            NSLog(@"Health Increased.");
        }
        
        NSLog(@"\n\nYou fall asleep beneath the tree.\nDay:01 was successfully completed.\nPress ENTER to continue.");
        waitOnCR();
        break;
    }
}

- (void) dayTwo
{
    while (playerIsAlive) {
        
        NSLog(@"\n\nDAY:02\n\nUpon being nudged by a large animal, you awake.\nIt's a huge silverback gorilla!!\n1.Run.\n2.Embrace your fate, and climb into its mouth.");
        scanf("%i", &ans);
        waitOnCR();
        if (ans == 1) {
            NSLog(@"\n\nThe gorilla watches you run in amusement. It trails behind you, until you drop from exhaustion.\nHe takes a bite out of your scrawny arm.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nOUCH!\nThe gorilla shakes its head in disapproval and proceeds to spit out the remaining flesh. The gorilla runs back into the jungle.\nYour gaping wound results in a significant health decrease.\nPress ENTER to continue.");
            waitOnCR();
            health = health - 60;
            NSLog(@"\nHealth decreased.");
        } else {
            NSLog(@"\n\nBy peacefully approaching the gorilla, it does not feel threatened. It takes you on its back to explore the island.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nAs you pass through the jungle, you see that snakes inhabit the taller trees.You pass through a grand meadow of grass.\nThe ape slows, as you look to the east coast of the island, you make out a tribe of warriors. The ape turns and brings you back to where he found you.\nYou take a mental note of what you saw.\nPress ENTER to continue.");
            waitOnCR();
        }
        
        NSLog(@"\n\nYou feel slightly chilled. You know the night will be really cold if you don't build a fire and retrieve wood.\n1.Search the beach.\n2.Search the jungle.");
        scanf("%i", &ans);
        waitOnCR();
        
        if (ans == 1) {
            while (ans == 1) {
                NSLog(@"\n\nYou feel the warm sand under your feet.\n1.Search the west coast.\n2.Search the southern coast.");
                scanf("%i", &ans);
                if (ans == 1) {
                    NSLog(@"\n\nYou walk for a mile, and come upon some sun dried timber. You create a tee-pee structure out of the wood.\nYou manage to make the kindle catch fire by scratching rocks together.\nPress ENTER to continue.");
                    waitOnCR();
                    break;
                }
                if (ans == 2) {
                    NSLog(@"\n\nYou walk in circles for another mile, this part of the beach does not have timber.\nPress ENTER to continue.");
                    ans = 1;
                    waitOnCR();
                }
            }
        } else {
            NSLog(@"\n\nYou find plenty of wood, and drag it on to the beach for your fire.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nAs night falls you have failed to light your fire, the wood from the jungle is too moist and rotten.\nYou find shelter under another tree, but you are exceptionally cold and weak.\nPress ENTER to continue.");
            health = health - 10;
            NSLog(@"Health decreased.");
            waitOnCR();
        }
        
        NSLog(@"\n\nYou fall asleep. Day:02 was successfully completed.\nPress ENTER to continue.");
        waitOnCR();
        break;
    }
}

- (void) dayThree
{
    while (playerIsAlive) {
        BOOL ateGranola;
        
        NSLog(@"\n\nDay:03\n\nThe sun bears down on your face and the sound of seagulls wake you. As you attempt to stand up, you are reminded of your ravaging hunger.\nPress ENTER to continue.");
        waitOnCR();
        NSLog(@"\n\nTo your surprise, you discover a granola bar, you stashed in the lower pocket of your cargo pants before your flight.\n1.Eat it.\n2.Save it for later.");
        scanf("%i", &ans);
        waitOnCR();
        // 3 - Answer1
        if (ans == 1) {
            ateGranola = true;
            NSLog(@"\n\nThe granola bar effectively curbs your hunger.\nPress ENTER to continue.");
            health = health + 10;
            NSLog(@"Health increased.");
            waitOnCR();
        } else {
            ateGranola = false;
            NSLog(@"\n\nPerhaps you will find a greater use for the bar later.\nPress ENTER to continue.");
            waitOnCR();
        }
        
        NSLog(@"\n\nYou recall that today is the day the dispatchers promised a rescue. You need an aerial view of the island, to see where the rescue team will come.\n1.Climb a tall tree.\n2.Climb a rock face.");
        scanf("%i", &ans);
        waitOnCR();

        if (ans == 1) {
            NSLog(@"\n\nYou climb to the top of a mossed over tree. The view is great and you can see a meadow that would be ideal for a helicopter landing.\nHowever, you also see a perfect area for a boat rescue on the east coast.\nAs you take in the view, you feel a jab and a following stinging sensation.\nYou have been bit by a snake.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nAfter you climb down the tree, you faint at its base.");
            waitOnCR();
            health = health - 50;
            NSLog(@"\nHealth is decreased significantly.");
            if (health <= 0) {
                playerIsAlive = false;
                break;
            }
        } else {
            NSLog(@"\n\nYou climb to the top of a rock face. The view is great and you can see a meadow that would be ideal for a helicopter landing.\nHowever, you also see a perfect area for a boat rescue on the east coast.\nPress ENTER to continue.");
        }
        
        NSLog(@"\n\nYou decide to walk to the east coast as it seems to be the most likely rescue point.\nPress ENTER to continue.");
        waitOnCR();
        
        NSLog(@"\n\nAs you walk through the jungle, you trip over a net. You are instantly flung upside down.\nPress ENTER to continue.");
        waitOnCR();
        
        NSLog(@"\n\nAs you look around, all you can make out are dark forms with bright painted faces. You are surrounded by natives.\nPress ENTER to continue.");
        waitOnCR();
        
        NSLog(@"\n\nThey take you to the east beach, and set you next to a grand fire. When they are not looking, you reach into your pockets for something useful.\nPress ENTER to continue.");
        waitOnCR();
        
        if (ateGranola == true) {
            NSLog(@"\n\nYou search to find your granola bar wrapper, but you seem to have left it under a tree. You imagine that the shiny foil wrapper would have deeply impressed the natives.\nThe natives knock you out.");
            health = 0;
            break;
        } else {
            NSLog(@"\n\nYou pull out your granola bar and draw their attention. They are shocked by the foil wrapper. They think it is a new metal.\nThe chief accepts your invitation to eat the honey granola bar. He is deeply impressed.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nIn this same moment, a large steel rescue boat approaches. The natives are terrified and leave you standing on the beach.\nYou are rescued.\nPress ENTER to continue.");
            waitOnCR();
            NSLog(@"\n\nYOU WIN\nPress ENTER to continue.");
            waitOnCR();
            [self printHealth];
            break;
        }
    }
}

- (void) printHealth
{
    if (health > 0) {
        NSLog(@"\n\n%@ managed to finish the day with a total health of: %i\nPress ENTER to continue.", name, health);
        waitOnCR();
    }
}

@end
