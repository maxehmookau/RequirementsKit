//
//  RequirementsKit.m
//  RequirementsKit
//
//  Created by Max Woolf on 02/08/2013.
//  Copyright (c) 2013 GatherRequirements. All rights reserved.
//

#import "RequirementsKit.h"
#import "RKProject.h"
#import "AFJSONRequestOperation.h"

@implementation RequirementsKit

static RequirementsKit *sharedInstance;

#pragma mark - Create a URL

+ (NSURL *)baseURI
{
    return [NSURL URLWithString:@"https://require-production.herokuapp.com/api/v1/"];
}

- (NSString *)tokenParam
{
    return [NSString stringWithFormat:@"?token=%@", [self apiKey]];
}

# pragma mark - Projects

/*
 * GET - /projects
 * Returns an NSArray of RKProjects
 */
- (NSArray *)projects
{
    NSString *urlString = [NSString stringWithFormat:@"%@%@%@",
                           [RequirementsKit baseURI],
                           [RKProject indexEndpoint],
                           [self tokenParam]];
    
    NSURL *url = [NSURL URLWithString:urlString];
    NSURLRequest *req = [NSURLRequest requestWithURL:url
                                         cachePolicy:NSURLCacheStorageAllowed
                                     timeoutInterval:10];
    
    NSData *data = [NSURLConnection sendSynchronousRequest:req
                                         returningResponse:nil
                                                     error:nil];
    
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data
                                                         options:NSJSONReadingAllowFragments
                                                           error:nil];
    
    NSMutableArray *projects = [[NSMutableArray alloc] init];
    for (NSDictionary *currentProject in json) {
        RKProject *project = [RKProject new];
        [project setTitle:[currentProject valueForKey:@"title"]];
        [project setDescription:[currentProject valueForKey:@"description"]];
        [projects addObject:project];
    }
    
    return [NSArray arrayWithArray:projects];
}



#pragma mark - Singleton Method Setup

+ (RequirementsKit *)sharedInstance
{
    if (sharedInstance == nil)
    {
        sharedInstance = [[super allocWithZone:NULL] init];
    }
    return sharedInstance;
}

+ (id)allocWithZone:(NSZone *)zone {
    return [self sharedInstance];
}

- (id)copyWithZone:(NSZone *)zone {
    return self;
}

@end