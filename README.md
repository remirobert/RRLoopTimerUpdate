RRLoopTimerUpdate
=================

Manage timer in update loop SKScene on SpriteKit.

Overview
========

```Objective-C

#import <Foundation/Foundation.h>

@interface RRLoopTimerUpdate : NSObject

@property (nonatomic, assign) NSTimeInterval rangeTimer;

- (instancetype) init :(NSTimeInterval)currentTime;
- (void) freezeTimer;
- (void) restartTimer;

@end

````

>###*freezeTimer*###
> Used to set the timer to keep the current timer value in the update loop of SKScene.

>###*restartTimer*###
> Call this function just before presenting the SKScene for update the timer loop.

*For more information refer to the example project.*
