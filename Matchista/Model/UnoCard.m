//
//  UnoCard.m
//  Matchista
//
//  Created by Renán Díaz Reyes on 6/8/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "UnoCard.h"

@implementation UnoCard

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    if ([otherCards count] == 1) {
        id card = [otherCards firstObject];
        if ([card isKindOfClass:[UnoCard class]]) {
            UnoCard *otherCard = (UnoCard *)card;
            if (otherCard.rank == self.rank || [otherCard.colorString isEqualToString:self.colorString] || otherCard.rank > [UnoCard maxRank] - 2) {
                score = 1;
            }
        }
    }
    
    return score;
}

- (NSString *)contents
{
    NSArray *rankStrings = [UnoCard rankStrings];
    return [rankStrings[self.rank] stringByAppendingString:self.colorString];
}

@synthesize colorString = _colorString;

+ (NSArray *)validColorStrings
{
    
    return @[@"redColor", @"blueColor", @"greenColor", @"yellowColor"];
}

- (void)setColorString:(NSString *)colorString
{
    if ([[UnoCard validColorStrings] containsObject:colorString]) {
        _colorString = colorString;
    }
}

- (NSString *)colorString
{
    return _colorString ? _colorString : @"?";
}

+ (NSArray *)rankStrings
{
    return @[@"0", @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8", @"9", @"S", @"R", @"D", @"W", @"WD"];
}

+ (NSUInteger)maxRank
{
    return [[self rankStrings] count] - 1;
}

- (void)setRank:(NSUInteger)rank
{
    if (rank <= [UnoCard maxRank]) {
        _rank = rank;
    }
}

@end
