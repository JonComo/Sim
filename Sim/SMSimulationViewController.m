//
//  SMSimulationViewController.m
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMSimulationViewController.h"

#import "SMGame.h"
#import "SMStatsView.h"

@interface SMSimulationViewController () < UICollectionViewDelegate, SMSimulationDelegate>
{
    SMGame *game;
    
    __weak IBOutlet UILabel *labelPrompt;
    __weak IBOutlet UICollectionView *collectionViewChoices;
}

@end

@implementation SMSimulationViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    game = [SMGame sharedManager];
    game.simulation.collectionViewChoices = collectionViewChoices;
    game.simulation.delegate = self;
    
    [self addStatsView];
    
    [game.simulation startGame];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)addStatsView
{
    NSArray* nibViews = [[NSBundle mainBundle] loadNibNamed:@"stats"
                                                      owner:self
                                                    options:nil];
    
    SMStatsView *statsView = (SMStatsView *)nibViews[0];
    
    [statsView setup];
    
    [self.view addSubview:statsView];
}

-(void)simulation:(SMSimulation *)simulation updatedPrompt:(SMPrompt *)prompt
{
    labelPrompt.text = prompt.text;
}

@end
