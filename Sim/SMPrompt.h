//
//  SMPrompt.h
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SMPrompt : NSObject

@property (nonatomic, strong) NSString *text;
@property (nonatomic, strong) NSArray *choices;

-(id)initWithPrompt:(NSString *)text choices:(NSArray *)choices;

-(void)pickChoiceAtIndex:(NSInteger)index;

@end