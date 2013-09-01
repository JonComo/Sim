//
//  SMSimulation.m
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMSimulation.h"

@interface SMSimulation ()

@end

@implementation SMSimulation

-(id)init
{
    if (self = [super init])
    {
        //init
        
        _player = [SMPlayer new];
        
    }
    
    return self;
}

@end
