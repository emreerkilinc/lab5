//
//  ScoreKeeper.m
//  lab5
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//
#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (void) scoreRight: (int) right andWrong: (int) wrong {
    int rate = ((float) right / (right + wrong)) * 100;
    NSLog(@“score: %d right, %d wrong --- %d%%“, right, wrong, rate);
}
@end
