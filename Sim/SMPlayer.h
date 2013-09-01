//
//  SMPlayer.h
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMPerson.h"

@interface SMPlayer : SMPerson

@property float money;

@property (nonatomic, strong) NSMutableArray *inventory;
@property int inventoryCapacity;

@end