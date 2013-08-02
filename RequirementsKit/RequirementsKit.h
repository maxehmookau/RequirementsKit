//
//  RequirementsKit.h
//  RequirementsKit
//
//  Created by Max Woolf on 02/08/2013.
//  Copyright (c) 2013 GatherRequirements. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RequirementsKit : NSObject

+ (RequirementsKit *)sharedInstance;

@property (nonatomic) NSString *apiKey;

@end
