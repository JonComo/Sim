//
//  SMStatsView.m
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMStatsView.h"

#import "SMGame.h"

@implementation SMStatsView
{
    
    __weak IBOutlet UILabel *labelOutput;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self){
        // Initialization code
        
        
    }
    
    return self;
}

-(void)setup
{
    [[SMGame sharedManager].simulation addObserver:self forKeyPath:@"days" options:NSKeyValueObservingOptionNew context:NULL];
    
    [[SMGame sharedManager].simulation.player addObserver:self forKeyPath:@"money" options:NSKeyValueObservingOptionNew context:NULL];
    
    [self update];
}

-(void)update
{
    int days = [SMGame sharedManager].simulation.days;
    float money = [SMGame sharedManager].simulation.player.money;
    
    NSString *output = [NSString stringWithFormat:@"Day: %i $%.2f", days, money];
    
    labelOutput.text = output;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    [self update];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
