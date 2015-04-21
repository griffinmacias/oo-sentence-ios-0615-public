//
//  FISSentence.m
//  OO-sentence
//
//  Created by Mason Macias on 4/19/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import "FISSentence.h"

@implementation FISSentence
-(NSString *)stringFormat
{
    return [self.words componentsJoinedByString:@" "];
}

-(NSInteger)numOfWords
{
    return [self.words count ];
}

-(BOOL)containsWord:(NSString *)searcher
{
    return [self.words containsObject:searcher];
}

-(BOOL)isProperSentence
{
    unichar firstLetter = [[self.words firstObject] characterAtIndex:0];
    
    unichar lastLetter = [[self.words lastObject] characterAtIndex:[[self.words lastObject] length] -1];
    
    BOOL upperCase = [[NSCharacterSet uppercaseLetterCharacterSet] characterIsMember:firstLetter];
    
    BOOL period = [[NSCharacterSet punctuationCharacterSet] characterIsMember:lastLetter];
    
    return (upperCase && period);
}

-(BOOL)isEqualToSentence:(FISSentence *)sentence
{
    NSString *wordsSentence = [self stringFormat];
    NSString *testingSentence = [sentence stringFormat];
    NSCharacterSet *charactersToRemove = [[NSCharacterSet alphanumericCharacterSet] invertedSet];
    NSString *strippedcharWords = [[wordsSentence componentsSeparatedByCharactersInSet:charactersToRemove] componentsJoinedByString:@""];
    NSString *strippedcharNewWords = [[testingSentence componentsSeparatedByCharactersInSet:charactersToRemove] componentsJoinedByString:@""];
    if ([strippedcharWords caseInsensitiveCompare:strippedcharNewWords ] == NSOrderedSame) {
        return YES;
    } else {
        return NO;
    }
}



@end
