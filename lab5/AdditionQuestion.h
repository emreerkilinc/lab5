//
//  AdditionQuestion.h
//  lab5
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionQuestion : NSObject

@property(nonatomic,strong) NSString *question;
@property (nonatomic,assign)NSInteger answer;
@property (nonatomic,strong)NSDate *startTime;
@property (nonatomic,strong)NSDate *endTime;
- (NSTimeInterval) answerTime;

@end
