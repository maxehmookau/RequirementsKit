//
//  RKProjectTests.m
//  RequirementsKit
//
//  Created by Max Woolf on 04/08/2013.
//  Copyright (c) 2013 GatherRequirements. All rights reserved.
//

#import "RKProjectTests.h"
#import "RKProject.h"

@implementation RKProjectTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testShowEndpointReturnsCorrectValue
{
    STAssertTrue([[RKProject showEndpointForID:1] isEqualToString:@"projects/1"], @"should return the path to the single project");
}

@end
