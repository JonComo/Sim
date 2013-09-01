//
//  SMGame.m
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMGame.h"

@implementation SMGame

+(SMGame *)sharedManager
{
    static SMGame *sharedManager;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[self alloc] init];
    });
    
    return sharedManager;
}

-(void)newSimulation
{
    self.simulation = nil;
    self.simulation = [SMSimulation new];
}

@end
