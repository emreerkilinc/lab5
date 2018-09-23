//
//  QuestionManager.m
//  lab5
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager
- (instancetype) init{
    self = [super init];
    if (self) {
        _questions = [NSMutableArray array];
    }
    return self;
}
- (NSString *) timeOutput {
    Question *last = [_questions objectAtIndex:[_questions count] -1];
    Question *first = [_questions objectAtIndex:0];
    
    NSTimeInterval timeInterval = [[last endTime] timeIntervalSinceDate:[first startTime]];
    long second =  lroundf(timeInterval);
    
    return [NSString stringWithFormat:@"Total Time: %lus, Average Time: %lus", second, second / [_questions count]];
}
@end
