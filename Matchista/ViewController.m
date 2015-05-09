//
//  ViewController.m
//  Matchista
//
//  Created by Renán Díaz Reyes on 5/8/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "PlayingCard.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@property (nonatomic) PlayingCardDeck *deck;
@end

@implementation ViewController

- (void)viewDidLoad
{
    self.deck = [[PlayingCardDeck alloc] init];
}

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}
- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([self.deck count]) {
        if ([sender.currentTitle length])
        {
            [sender setBackgroundImage:[UIImage imageNamed:@"backside"]
                              forState:UIControlStateNormal];
            [sender setTitle:@"" forState:UIControlStateNormal];    }
        else
        {
            PlayingCard *card = (PlayingCard*)[self.deck drawRandomCard];
            [sender setBackgroundImage:[UIImage imageNamed:@"frontside"]
                              forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
            self.flipCount++;
        }
    }
    else
    {
        [sender setBackgroundImage:[[UIImage alloc] init]
                          forState:UIControlStateNormal];
        [sender setTitle:@"⌀" forState:UIControlStateNormal];
    }
}

@end
