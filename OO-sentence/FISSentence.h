//
//  FISSentence.h
//  OO-sentence
//
//  Created by Mason Macias on 4/19/15.
//  Copyright (c) 2015 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISSentence : NSObject

@property (strong, nonatomic) NSMutableArray *words;
-(NSString *)stringFormat;
-(NSInteger)numOfWords;
-(BOOL)containsWord:(NSString *)searcher;
-(BOOL)isProperSentence;
-(BOOL)isEqualToSentence:(FISSentence *)sentence;
@end
