//
//  QuestionFactory.m
//  lab5
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory
- (instancetype) init{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion", @"SubtractionQuestion", @"MoltiplicationQuestion", @"DivisionQuestion" ];
    }
    return self;
}
- (Question *) generateRandomQuestion {
    // return an instance of +, -, *, / Question object.
    // AdditionQuestion, SubstractionQuestion, MoltiplicationQuestion, DisionQuestion
    NSString *type = [_questionTypes objectAtIndex:arc4random_uniform(4) ];
    // [[AdditionQuestion alloc] init];
    return [[NSClassFromString(type) alloc] init];
}
@end
