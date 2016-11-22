/*
 Assignment 1.
 Program to create a mathemathical game.
 
 XCode.
 flushall() not compatable with XCode.
 Created by Sylvia Wan DT282-C15423602 on 03/11/2015.
 Copyright © 2015 Sylvia Wan. All rights reserved.
 */

#include <stdio.h>

main()
{
    int option;
    int answer;
    int rounds;
    int x;
    int correct;
    int incorrect;
    
    char ch;
    
    rounds = 0;
    x = 0;
    
    //title
    printf("||This Awesome Maths Quiz||\n\n");
    printf(" MENU\n");
    
    //keeps the game in a loop
    do
    {
        //options
        printf("Please select:\n 1 to set your number of rounds\n");
        printf(" 2 to begin Game\n");
        printf(" 3 to view scores\n");
        printf(" 4 to EXIT GAME\n\n");
        scanf("%d", &option);
        
        /*this avoids an infinite loop when a character
         is entered, by reading all the characters.
         Message displays for each character entered.
         */
        while( ( ch = getchar() ) != '\n')
        {
            printf("Invalid input. This is a character\n");
        }//end while
        
        //User chooses an option from the menu
        switch (option)
        {
            case 1:
            {
                //To set number of rounds to play in one game.
                printf("You've entered option 1\n");
                printf("Please set number of rounds you would like to play\n");
                scanf("%d", &rounds);
                
                while((ch = getchar()) != '\n')
                {
                    printf("Invalid input. This is a character\n");
                }//end while
                
                //if number of rounds set is not in range
                if (rounds<1 || rounds > 5)
                {
                    printf("Bruh, we don't have that kind of rounds\n\n");
                }
                break;
            }
                
                //option can not be chosen without choosing option 1 before
            case 2:
            {
                correct = 0;
                incorrect = 0;
                
                printf("You've entered option 2\n");
                
                //this handles all the rounds
                switch (rounds)
                {
                    case 1:
                    {
                        printf("Q1. 9 + 10 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 19)
                        {
                            printf("Correct!\n\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 19\n\n");
                            incorrect++;
                        }//end else
                        
                        break;
                    }
                        
                    case 2:
                    {
                        printf("Q1. 9 + 10 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 19)
                        {
                            printf("Correct\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer 19\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q2. 10 - 3 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 7)
                        {
                            printf("Correct!\n\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 7\n\n");
                            incorrect++;
                        }//end else
                        
                        break;
                    }
                        
                    case 3:
                    {
                        printf("Q1. 9 + 10 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 19)
                        {
                            printf("Correct\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 19\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q2. 10 - 3 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 7)
                        {
                            printf("Correct!\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 7\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q3. 2 x 9 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 18)
                        {
                            printf("Correct!\n\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 18\n\n");
                            incorrect++;
                        }//end else
                        
                        break;
                    }
                        
                    case 4:
                    {
                        printf("Q1. 9 + 10 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 19)
                        {
                            printf("Correct\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 19\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q2. 10 - 3 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 7)
                        {
                            printf("Correct!\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 7\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q3. 2 x 9 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 18)
                        {
                            printf("Correct!\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 18\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q4. 36 / 6 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 6)
                        {
                            printf("Correct!\n\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 6\n\n");
                            incorrect++;
                        }//end else
                        
                        break;
                    }
                        
                    case 5:
                    {
                        printf("Q1. 9 + 10 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 19)
                        {
                            printf("Correct\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 19\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q2. 10 - 3 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 7)
                        {
                            printf("Correct!\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 7\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q3. 2 x 9 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 18)
                        {
                            printf("Correct!\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 18\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q4. 36 / 6 = \n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 6)
                        {
                            printf("Correct!\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("You've entered %d\n", answer);
                            printf("Incorrect! The answer is 6\n");
                            incorrect++;
                        }//end else
                        
                        printf("Q5. 1 + 1 =\n");
                        scanf("%d", &answer);
                        
                        while((ch = getchar()) != '\n')
                        {
                            printf("Invalid input. This is a character\n");
                        }//end while
                        
                        if (answer == 2)
                        {
                            printf("Correct!\n\n");
                            correct++;
                        }//end if
                        else
                        {
                            printf("Incorrect! The answer is 2\n");
                            printf("You stupid\n\n");
                            incorrect++;
                        }//end else
                        
                        break;
                    }
                        
                    default:
                    {
                        //Appears if user enters number/option out of range
                        printf("Hold up!!\n");
                        printf("Select option 1 to set the number of rounds you would like to play\n");
                        printf("then select option 2 to begin game!;D\n\n");
                        break;
                    }//end default
                }//end switch(rounds)
                
                break;
            }//end switch(choice) case 2
                
            case 3:
            {
                //Displays score from previous game
                printf("You've entered option 3\n");
                printf("You've answered, from you're previous game:\n");
                printf("%d questions correctly \n%d questions incorrectly\n\n", correct, incorrect);
                break;
            }
                
            case 4:
            {
                //Exit game when option 4 is selected
                printf("Game Over. Ok, bye!:D\n");
                x = 1;
                break;
            }
                
            default:
            {
                printf("Bruh, this ain't even an option\n\n");
                break;
            }//end default
        }//end switch(choice)
    }//end do
    
    //Program terminate
    while (x == 0);
    
}//end main()