//
//  RKProject.m
//  RequirementsKit
//
//  Created by Max Woolf on 03/08/2013.
//  Copyright (c) 2013 GatherRequirements. All rights reserved.
//

#import "RKProject.h"

@implementation RKProject

+ (NSString *)indexEndpoint
{
    return @"projects";
}

+ (NSString *)showEndpointForID:(int)projectID
{
    return [[RKProject indexEndpoint] stringByAppendingFormat:@"/%i", projectID];
}

@end
