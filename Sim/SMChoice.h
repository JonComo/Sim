//
//  SMChoice.h
//  Sim
//
//  Created by Jon Como on 9/1/13.
//  Copyright (c) 2013 Jon Como. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^action)(void);

@interface SMChoice : NSObject

@property (nonatomic, strong) NSString *text;

+(SMChoice *)choiceWithText:(NSString *)text action:(action)block;

-(void)run;

@end
