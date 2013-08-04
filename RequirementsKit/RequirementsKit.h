//
//  RequirementsKit.h
//  RequirementsKit
//
//  Created by Max Woolf on 02/08/2013.
//  Copyright (c) 2013 GatherRequirements. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RKProject.h"
@class RequirementsKit;

@protocol RequirementsKitProjectDelegate <NSObject>

- (void)didReceiveAllProjects;
- (void)failedToReceiveAllProjects;

@end

@interface RequirementsKit : NSObject

// Singleton Method
+ (RequirementsKit *)sharedInstance;

// URL Generation
+ (NSURL *)baseURI;
- (NSString *)tokenParam;

// Projects
- (NSArray *)projects;
- (RKProject *)projectWithID:(int)projectID;

@property (nonatomic) NSString *apiKey;
@property (nonatomic) id delegate;

@end
