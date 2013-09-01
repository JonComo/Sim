//
//  SMPrompt.m
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMPrompt.h"

#import "SMChoice.h"

@implementation SMPrompt

+(SMPrompt *)prompt:(NSString *)text choices:(NSArray *)choices
{
    SMPrompt *newPrompt = [[self alloc] initWithPrompt:text choices:choices];
    
    return newPrompt;
}

-(id)initWithPrompt:(NSString *)text choices:(NSArray *)choices
{
    if (self = [super init]) {
        //init
        _text = text;
        _choices = choices;
    }
    
    return self;
}

-(void)pickChoiceAtIndex:(NSInteger)index
{
    SMChoice *choice = [self.choices objectAtIndex:index];
    
    [choice run];
}

@end
