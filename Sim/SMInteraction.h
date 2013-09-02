//
//  SMInteraction.h
//  Sim
//
//  Created by David de Jesus on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SMPlayer.h"
#import "SMChoice.h"

typedef NS_ENUM(NSUInteger, SMInteractionType) {
    SMInteractionTypeBuy,
    SMInteractionTypeSell,
    SMInteractionTypeFly,
    SMInteractionTypePay,
    SMInteractionTypeRun,
    SMInteractionTypeFight,
};

@class SMInteraction;

@protocol SMInteractionDelegate <NSObject>

@required

- (void)didPerformInteraction:(SMInteraction *)interaction WithType:(SMInteractionType)type;

@end

@interface SMInteraction : NSObject

@property (copy) SMPlayer *person;
@property (assign) SMInteractionType type;
@property (assign) id <SMInteractionDelegate> delegate;
 
+(SMInteraction *)sharedInstance;

- (void)performInteractionWithType:(SMInteractionType)type;

-(void)executePromptWithChoice:(SMChoice *)choice;


@end
