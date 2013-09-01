//
//  SMGame.h
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SMSimulation.h"

@interface SMGame : NSObject

@property (nonatomic, strong) SMSimulation *simulation;

+(SMGame *)sharedManager;

-(void)newSimulation;

@end
