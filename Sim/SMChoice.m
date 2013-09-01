//
//  SMChoice.m
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMChoice.h"

@implementation SMChoice
{
    action completion;
}

+(SMChoice *)choiceWithText:(NSString *)text action:(action)block
{
    SMChoice *newChoice = [[self alloc] initWithText:text action:block];
    
    return newChoice;
}

-(id)initWithText:(NSString *)aText action:(action)block
{
    if (self = [super init]) {
        //init
        
        _text = aText;
        completion = block;
    }
    
    return self;
}

-(void)run
{
    if (completion) completion();
}

@end
