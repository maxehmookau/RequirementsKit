//
//  RequirementsKitTests.m
//  RequirementsKitTests
//
//  Created by Max Woolf on 02/08/2013.
//  Copyright (c) 2013 GatherRequirements. All rights reserved.
//

#import "RequirementsKitTests.h"
#import "RequirementsKit.h"

@implementation RequirementsKitTests

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

- (void)testSharedInstanceShouldReturn
{
    RequirementsKit *kit = [RequirementsKit sharedInstance];
    STAssertEquals([RequirementsKit class], [kit class], @"sharedInstance should return an instance of RequirementsKit");
}

- (void)testSingletonMethod
{
    RequirementsKit *kit1 = [RequirementsKit sharedInstance];
    RequirementsKit *kit2 = [RequirementsKit sharedInstance];
    [kit1 setApiKey:@"test123"];
    STAssertEqualObjects([kit1 apiKey], [kit2 apiKey], @"sharedInstance should act like a singleton");
    STAssertEqualObjects([kit2 apiKey], @"test123", @"a change to sharedInstance should be global");
}

@end
