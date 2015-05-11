//
//  PlayingCard.h
//  Matchista
//
//  Created by Renán Díaz Reyes on 5/9/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;

@end
