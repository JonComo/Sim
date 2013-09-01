//
//  SMSimulation.m
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMSimulation.h"

#import "SMPrompt.h"
#import "SMChoice.h"

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

-(void)startGame
{
    
    SMPrompt *buyAndSell = [[SMPrompt alloc] initWithPrompt:@"Buy or sell you mofo" choices:@[[SMChoice choiceWithText:@"Buy biotch" action:^{
        
        
        [self setPrompt:[[SMPrompt alloc] initWithPrompt:@"Oh you bought, you sucka. Im going to kill you!" choices:@[[SMChoice choiceWithText:@"Run" action:^{
            
            
            [self setPrompt:[[SMPrompt alloc] initWithPrompt:@"You lost 80 dollas" choices:@[[SMChoice choiceWithText:@"That sucks" action:^{
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Yes" message:@"it does" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                [alert show];
            }]]]];
            
            
        } ], [SMChoice choiceWithText:@"Fight" action:^{
            
            
            
            [self setPrompt:[[SMPrompt alloc] initWithPrompt:@"You killed him" choices:@[[SMChoice choiceWithText:@"Thats great" action:^{
                UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Yes" message:@"it is" delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil];
                [alert show];
            }]]]];
            
            
            
        }]]]];
        
        
    } ], [SMChoice choiceWithText:@"Sell" action:^{
        self.player.money += 5;
    }]]];
    
    
    
    
    [self setPrompt:buyAndSell];
}

-(void)setPrompt:(SMPrompt *)prompt
{
    self.currentPrompt = prompt;
    
    [self.collectionViewChoices reloadData];
    
    if ([self.delegate respondsToSelector:@selector(simulation:updatedPrompt:)])
        [self.delegate simulation:self updatedPrompt:self.currentPrompt];
}

-(void)setCollectionViewChoices:(UICollectionView *)collectionViewChoices
{
    collectionViewChoices.dataSource = self;
    collectionViewChoices.delegate = self;
    
    _collectionViewChoices = collectionViewChoices;
    
    [collectionViewChoices reloadData];
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"choiceCell" forIndexPath:indexPath];
    
    SMChoice *choice = self.currentPrompt.choices[indexPath.row];
    
    UILabel *label = (UILabel *)[cell viewWithTag:100];
    
    label.text = choice.text;
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return self.currentPrompt.choices.count;
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
    [self.currentPrompt pickChoiceAtIndex:indexPath.row];
}

@end
