//
//  SMInteraction.m
//  Sim
//
//  Created by David de Jesus on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMInteraction.h"

@implementation SMInteraction

+(SMInteraction *)sharedInstance
{
    static SMInteraction *interaction;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        interaction = [[self alloc] init];
    });
    return interaction;
}

- (void)performInteractionWithType:(SMInteractionType)type
{
    switch (type) {
        case SMInteractionTypeBuy:
            self.type = SMInteractionTypeBuy;
            break;
            
        case SMInteractionTypeSell:
            self.type = SMInteractionTypeSell;
            break;
            
        case SMInteractionTypeFly:
            self.type = SMInteractionTypeFly;
            break;
            
        case SMInteractionTypePay:
            self.type = SMInteractionTypePay;
            break;
            
        case SMInteractionTypeFight:
            self.type = SMInteractionTypeFight;
            break;
            
        case SMInteractionTypeRun:
            self.type = SMInteractionTypeRun;
            break;
        default:
            break;
    }

}

-(void)executePromptWithChoice:(SMChoice *)choice
{
    NSLog(@"%d", self.type);
    
    if ([self.delegate respondsToSelector:@selector(didPerformInteraction:WithType:)]) {
        [self.delegate didPerformInteraction:self WithType:self.type];
    }

}


@end
