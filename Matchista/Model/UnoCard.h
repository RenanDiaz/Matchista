//
//  UnoCard.h
//  Matchista
//
//  Created by Renán Díaz Reyes on 6/8/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "Card.h"

@interface UnoCard : Card

@property (strong, nonatomic) NSString *colorString;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validColorStrings;
+ (NSUInteger)maxRank;

@end
