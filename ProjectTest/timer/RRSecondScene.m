//
//  RRSecondScene.m
//  timer
//
//  Created by Remi Robert on 04/07/14.
//  Copyright (c) 2014 remirobert. All rights reserved.
//

#import "RRSecondScene.h"
#import "RRMyScene.h"

@interface RRSecondScene ()
@property (nonatomic, strong) SKScene *parentScene;
@property (nonatomic, assign) CGFloat timer;
@property (nonatomic, assign) NSInteger addTimer;
@end

@implementation RRSecondScene

- (instancetype) initWithSize:(CGSize)size :(SKScene *)parentScene {
    self = [super initWithSize:size];
    
    if (self != nil) {
        _parentScene = parentScene;
        _timer = 0.0;
        _addTimer = rand() % 5 + 1;
        self.backgroundColor = [UIColor colorWithRed:0.406 green:1.000 blue:0.401 alpha:1.000];
    }
    return (self);
}

- (void) update:(NSTimeInterval)currentTime {
    if (_timer == 0.0)
        _timer = currentTime + _addTimer;
    
    if (currentTime >= _timer) {
        NSLog(@"WAIT TIME = %d", _addTimer);
        [((RRMyScene *)_parentScene).timer restartTimer];
        [self.view presentScene:_parentScene];
    }
}

@end
