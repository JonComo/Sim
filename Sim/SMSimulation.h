//
//  SMSimulation.h
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SMPlayer.h"

@interface SMSimulation : NSObject

@property (nonatomic, strong) SMPlayer *player;

@property int days;

@end