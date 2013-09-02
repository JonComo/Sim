//
//  SMInteractionVC.m
//  Sim
//
//  Created by David de Jesus on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import "SMInteractionVC.h"
#import "SMInteraction.h"

@interface SMInteractionVC ()

@property (nonatomic, weak) IBOutlet UILabel *mainLabel;
@property (strong, nonatomic) IBOutlet UILabel *dayLabel;
@property (strong, nonatomic) IBOutlet UILabel *moneyLabel;

@end

@implementation SMInteractionVC


- (void)viewDidLoad
{
    [super viewDidLoad];
        
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)buyChoice:(id)sender {
    
    [[SMInteraction sharedInstance] performInteractionWithType:SMInteractionTypeBuy];
    [[SMInteraction sharedInstance] executePrompt];
}

- (IBAction)sellChoice:(id)sender {
    
    [[SMInteraction sharedInstance] performInteractionWithType:SMInteractionTypeSell];
    [[SMInteraction sharedInstance] executePrompt];
    
}

- (IBAction)flyToChoice:(id)sender {
    
    [[SMInteraction sharedInstance] performInteractionWithType:SMInteractionTypeFly];
    [[SMInteraction sharedInstance] executePrompt];
    
}

- (IBAction)payDebt:(id)sender {
    
    [[SMInteraction sharedInstance] performInteractionWithType:SMInteractionTypePay];
    [[SMInteraction sharedInstance] executePrompt];
}
@end
