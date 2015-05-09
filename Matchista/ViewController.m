//
//  ViewController.m
//  Matchista
//
//  Created by Renán Díaz Reyes on 5/8/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipsLabel;
@property (nonatomic) int flipCount;
@end

@implementation ViewController

- (void)setFlipCount:(int)flipCount
{
    _flipCount = flipCount;
    self.flipsLabel.text = [NSString stringWithFormat:@"Flips: %d", self.flipCount];
}
- (IBAction)touchCardButton:(UIButton *)sender
{
    if ([sender.currentTitle length])
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"backside"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];    }
    else
    {
        [sender setBackgroundImage:[UIImage imageNamed:@"frontside"]
                          forState:UIControlStateNormal];
        [sender setTitle:@"A♠︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
}

@end
