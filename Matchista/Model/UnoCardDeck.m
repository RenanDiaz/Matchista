//
//  UnoCardDeck.m
//  Matchista
//
//  Created by Renán Díaz Reyes on 6/8/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "UnoCardDeck.h"
#import "UnoCard.h"

@implementation UnoCardDeck

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        for (NSString *colorString in [UnoCard validColorStrings]) {
            for (NSUInteger rank = 0; rank < [UnoCard maxRank]; rank++) {
                UnoCard *card = [[UnoCard alloc] init];
                card.rank = rank;
                card.colorString = colorString;
                [self addCard:card];
            }
            
            for (NSUInteger rank = 1; rank <= [UnoCard maxRank] && rank != [UnoCard maxRank] - 1; rank++) {
                UnoCard *card = [[UnoCard alloc] init];
                card.rank = rank;
                card.colorString = colorString;
                [self addCard:card];
            }
        }
    }
    
    return self;
}

@end
