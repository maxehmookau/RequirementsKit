//
//  RKProject.h
//  RequirementsKit
//
//  Created by Max Woolf on 03/08/2013.
//  Copyright (c) 2013 GatherRequirements. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RKProject : NSObject

@property (nonatomic, weak) NSString *title;
@property (nonatomic, weak) NSString *description;
@property (nonatomic, weak) NSString *clientID;
@property (nonatomic, weak) NSDate *createdAt;
@property (nonatomic, weak) NSDate *updatedAt;

+ (NSString *)indexEndpoint;
+ (NSString *)showEndpointForID:(int)projectID;

@end
