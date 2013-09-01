//
//  SMSimulation.h
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "SMPrompt.h"

#import "SMPlayer.h"

@class SMSimulation;

@protocol SMSimulationDelegate <NSObject>

@optional
-(void)simulation:(SMSimulation *)simulation updatedPrompt:(SMPrompt *)prompt;

@end

@interface SMSimulation : NSObject <UICollectionViewDataSource, UICollectionViewDelegateFlowLayout>

@property (nonatomic, weak) id <SMSimulationDelegate>delegate;

@property (nonatomic, strong) SMPrompt *currentPrompt;
@property (nonatomic, strong) SMPlayer *player;
@property int days;

@property (nonatomic, weak) UICollectionView *collectionViewChoices;


-(void)startGame;

@end