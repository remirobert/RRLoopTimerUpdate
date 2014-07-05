//
//  RRMyScene.m
//  timer
//
//  Created by Remi Robert on 04/07/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import "RRMyScene.h"
#import "RRSecondScene.h"

@implementation RRMyScene

-(id)initWithSize:(CGSize)size {    
    if (self = [super initWithSize:size]) {
        /* Setup your scene here */
        
        self.backgroundColor = [SKColor colorWithRed:0.15 green:0.15 blue:0.3 alpha:1.0];
        
        SKLabelNode *myLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        
        myLabel.text = @"Change scene";
        myLabel.fontSize = 30;
        myLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                       CGRectGetMidY(self.frame));
        myLabel.name = @"label";
        [self addChild:myLabel];
    }
    return self;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *touch = [touches anyObject];
    CGPoint location = [touch locationInNode:self];
    SKNode *node = [self nodeAtPoint:location];
    
    if ([node.name isEqualToString:@"label"]) {
        [self.view presentScene:[[RRSecondScene alloc] initWithSize:self.size :self]];
        [_timer freezeTimer];
    }
}

-(void) update:(NSTimeInterval)currentTime {
    
    if (_timer == nil)
        _timer = [[RRLoopTimerUpdate alloc] init:currentTime];
    
    currentTime += _timer.rangeTimer;
    
    NSLog(@"current timer = [%f]", currentTime);
}

@end
