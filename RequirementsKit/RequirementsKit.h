//
//  RequirementsKit.h
//  RequirementsKit
//
//  Created by Max Woolf on 02/08/2013.
//  Copyright (c) 2013 GatherRequirements. All rights reserved.
//

#import <Foundation/Foundation.h>
@class RequirementsKit;

@protocol RequirementsKitProjectDelegate <NSObject>

- (void)didReceiveAllProjects;
- (void)failedToReceiveAllProjects;

@end

@interface RequirementsKit : NSObject

+ (RequirementsKit *)sharedInstance;
+ (NSURL *)baseURI;
- (NSString *)tokenParam;
- (NSArray *)projects;

@property (nonatomic) NSString *apiKey;
@property (nonatomic) id delegate;

@end
