//
//  SMNewGameViewController.m
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMNewGameViewController.h"

#import "SMGame.h"

#import "SMStatsView.h"

@interface SMNewGameViewController () <UITextFieldDelegate>
{
    __weak IBOutlet UITextField *textFieldName;
}

@end

@implementation SMNewGameViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [[SMGame sharedManager] newSimulation];
    
    [self addStatsView];
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
    
    [self.view addSubview:statsView];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    
    if (textField == textFieldName)
    {
        [SMGame sharedManager].simulation.player.name = textField.text;
    }
    
    return YES;
}

@end
