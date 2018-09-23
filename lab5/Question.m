//
//  Question.m
//  lab5
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//

#import "Question.h"

@implementation Question : NSObject
-(instancetype)init
{
    self = [super init];
    if(self){
        //generate 2 random ints arc4random_uniform
        int left = arc4random_uniform(90)+10;
        int right = arc4random_uniform(90)+ 10;
       
        _startTime = [NSDate date];
    }
    return self;
}
-(NSInteger)answer{
    _endTime=[NSDate date];
    return _answer;
    
}
- (NSTimeInterval) answerTime {
    return [_endTime timeIntervalSinceDate: _startTime];
}
- (void) generateQuestion{
    
}
@end
