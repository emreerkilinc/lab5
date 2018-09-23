//
//  ScoreKeeper.h
//  lab5
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property (nonatomic, assign) int right;
@property (nonatomic, assign) int wrong;

- (void) scoreRight: (int) right andWrong: (int) wrong;
@end
