//
//  IntroScene.m
//  Deeds
//
//  Created by Alexey on 19.03.14.
//  Copyright Swiftmoon Software 2014. All rights reserved.
//
// -----------------------------------------------------------------------

#import "IntroScene.h"

@implementation IntroScene


+ (IntroScene *)scene
{
	return [[self alloc] init];
}

- (id)init
{
    // Apple recommend assigning self with supers return value
    self = [super init];
    if (!self) return(nil);

    [[CCSpriteFrameCache sharedSpriteFrameCache] addSpriteFramesWithFile:@"spritemap.plist"];
    CCSpriteBatchNode *spriteSheet = [CCSpriteBatchNode batchNodeWithFile:@"spritemap.png"];
    [self addChild:spriteSheet];

    CCSprite *bg = [CCSprite spriteWithSpriteFrame:[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:@"bg.jpg"]];
    bg.anchorPoint = ccp(0,0);
    bg.position = ccp(0,0);
    [spriteSheet addChild:bg];

    CCSprite *header = [CCSprite spriteWithSpriteFrame:[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:@"deeds-header.png"]];
    header.position = ccp(384,768);
    [spriteSheet addChild:header];

    CCSprite *btn_edit = [CCSprite spriteWithSpriteFrame:[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:@"edit-128.png"]];
    btn_edit.position = ccp(640,60);
    btn_edit.anchorPoint = ccp(0,0);
    [spriteSheet addChild:btn_edit];

    CCSprite *btn_sett = [CCSprite spriteWithSpriteFrame:[[CCSpriteFrameCache sharedSpriteFrameCache] spriteFrameByName:@"settings-128.png"]];
    btn_sett.position = ccp(540,60);
    btn_sett.anchorPoint = ccp(0,0);
    [spriteSheet addChild:btn_sett];

    CCLabelTTF *plan1 = [CCLabelTTF labelWithString:@"ПЛАНИРОВЩИК" fontName:@"Boomboom" fontSize:52];
    plan1.position = ccp(384, 580);
    plan1.fontColor = [CCColor colorWithCcColor3b:ccc3(255,113,0)];
    [self addChild:plan1];

    CCLabelTTF *plan2 = [CCLabelTTF labelWithString:@"ДОМАШНИХ" fontName:@"Boomboom" fontSize:52];
    plan2.position = ccp(384, 500);
    plan2.fontColor = [CCColor colorWithCcColor3b:ccc3(255,113,0)];
    [self addChild:plan2];

    CCLabelTTF *plan3 = [CCLabelTTF labelWithString:@"ДЕЛ" fontName:@"Boomboom" fontSize:52];
    plan3.position = ccp(384, 420);
    plan3.fontColor = [CCColor colorWithCcColor3b:ccc3(255,113,0)];
    [self addChild:plan3];

    /*
    // Create a colored background (Dark Grey)
    CCNodeColor *background = [CCNodeColor nodeWithColor:[CCColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f]];
    [self addChild:background];
    
    // Hello world
    CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Chalkduster" fontSize:36.0f];
    label.positionType = CCPositionTypeNormalized;
    label.color = [CCColor redColor];
    label.position = ccp(0.5f, 0.5f); // Middle of screen
    [self addChild:label];
    
    // Helloworld scene button
    CCButton *helloWorldButton = [CCButton buttonWithTitle:@"[ Start ]" fontName:@"Verdana-Bold" fontSize:18.0f];
    helloWorldButton.positionType = CCPositionTypeNormalized;
    helloWorldButton.position = ccp(0.5f, 0.35f);
    [helloWorldButton setTarget:self selector:@selector(onSpinningClicked:)];
    [self addChild:helloWorldButton];
    */

    // done
	return self;
}

- (void)onSpinningClicked:(id)sender
{
    // start spinning scene with transition
//    [[CCDirector sharedDirector] replaceScene:[HelloWorldScene scene]
//                               withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionLeft duration:1.0f]];
}

@end
