//
//  UnoGame.m
//  Matchista
//
//  Created by Renán Díaz Reyes on 6/8/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "UnoGame.h"

@interface UnoGame()
@property (nonatomic, strong) NSMutableArray *cards;
@end

@implementation UnoGame

- (NSMutableArray *)cards
{
    if (!_cards) _cards = [[NSMutableArray alloc] init];
    return _cards;
}

- (Card *)cardAtIndex:(NSUInteger)index
{
    return (index < [self.cards count]) ? self.cards[index] : nil;
}

- (void)chooseCardAtIndex:(NSUInteger)index
{
    Card *card = [self cardAtIndex:index];
    
    if (!card.isMatched) {
        if (card.isChosen) {
            card.chosen = NO;
        } else {
            for (Card *otherCard in self.cards) {
                if (otherCard.isChosen && !otherCard.isMatched) {
                    int matchScore = [card match:@[otherCard]];
                    if (matchScore) {
                        otherCard.matched = YES;
                        card.matched = YES;
                    } else {
                        otherCard.chosen = NO;
                    }
                    break;
                }
            }
            card.chosen = YES;
        }
    }
}

@end
