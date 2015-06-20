//
//  UnoGame.h
//  Matchista
//
//  Created by Renán Díaz Reyes on 6/8/15.
//  Copyright (c) 2015 Renán Díaz Reyes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UnoCard.h"

@interface UnoGame : NSObject

- (void)chooseCardAtIndex:(NSUInteger)index;
- (UnoCard *)cardAtIndex:(NSUInteger)index;

@end
