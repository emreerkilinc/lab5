//
//  InputHandler.m
//  lab5
//
//  Created by emre on 2018-09-23.
//  Copyright © 2018 emre. All rights reserved.
//
#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getUserInputWithLength:(int) maxLength withPrompt : (NSString *)prompt{
    // get c string
    // get rid of whitespaces
    
    if(maxLength < 1){
        maxLength = 255;
    }
    NSLog(@"%@", prompt);
    char inputChars[maxLength];
    const char *cstring = fgets(inputChars, maxLength,stdin);
    NSString *result = [NSString stringWithCString:cstring encoding:NSUTF8StringEncoding];
    NSCharacterSet *whitespaceAndNewLine = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    return [result stringByTrimmingCharactersInSet: whitespaceAndNewLine];
}
@end
