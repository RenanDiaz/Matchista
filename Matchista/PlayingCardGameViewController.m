//
//  PlayingCardGameViewController.m
//  Matchista
//
//  Created by Renán Díaz Reyes on 5/17/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "PlayingCardGameViewController.h"
#import "PlayingCardDeck.h"

@interface PlayingCardGameViewController ()

@end

@implementation PlayingCardGameViewController

- (Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

@end
