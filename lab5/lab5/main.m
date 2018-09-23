//
//  main.m
//  lab5
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//
#import <Foundation/Foundation.h>
#import "Question.h"
#import "QuestionFactory.h"
#import "QuestionManager.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        NSLog(@"MATHS!\n\n\n");
        NSString *right = @"Right!\n";
        NSString *wrong = @"Wrong!\n";
        ScoreKeeper *myScore = [ScoreKeeper new];
        QuestionManager *questionManager = [[QuestionManager alloc] init];
        QuestionFactory *questionfactory = [[QuestionFactory alloc] init];
        while (gameOn) {
            Question *q = [questionfactory generateRandomQuestion];
            [q generateQuestion];
            [[questionManager questions]addObject:q];
            NSString *userAnswer = [InputHandler getUserInputWithLength:10 widthPrompt:[q question]];
            NSInteger userAnsInt = [userAnswer integerValue];
            if ([userAnswer isEqualToString:@"quit"]) {
                gameOn = NO;
            } else if ([q answer] == userAnsInt){
                NSLog(@"%@", right);
                [myScore setRight:[myScore right] + 1];
            } else {
                NSLog(@"%@", wrong);
                [myScore setWrong:[myScore wrong] + 1];
            }
            [myScore scoreRight:[myScore right] andWrong:[myScore wrong]];
            NSLog(@"%@", [questionManager timeOutput]);
            
        }
    }
    return 0;
}
