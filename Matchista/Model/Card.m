//
//  Card.m
//  Matchista
//
//  Created by Renán Díaz Reyes on 5/9/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *)otherCards
{
    int score = 0;
    
    for (Card *card in otherCards)
    {
        if ([card.contents isEqualToString:self.contents])
        {
            score = 1;
        }
    }
    
    return score;
}

@end
