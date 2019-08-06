//
//  RNAzureAdalConfig.h
//  RNAzureAdalSdk
//
//  Created by herman on 05/08/19.
//  Copyright © 2019 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <ADAL/ADAL.h>

@interface RNAzureAdalConfig : NSObject {
    NSString* _authority;
    NSString* _clientId;
    NSString* _redirectUrl;
    ADAuthenticationContext* _authContext;
}

/**
 * Intialize configuration class
 * @param authority
 * @param clientId
 * @param redirectUrl
 * @return instance of configuration class
 */
- (id) initWithConfiguration:(NSString*) authority
                    clientId:(NSString*)clientId
                 redirectUrl:(NSString*)redirectUrl
                 authContext:(ADAuthenticationContext*)authContext;

/**
 * Get authentication context
 * @return authenticationContext
 */
- (ADAuthenticationContext*) getAuthContext;

/**
 * Intialize configuration class
 * @param authority
 * @param clientId
 * @param redirectUrl
 * @param authContext
 * @return instance of configuration class
 */
+ (Configuration *) configurationWithAuthority:(NSString*) authority
                                      clientId:(NSString*)clientId
                                   redirectUrl:(NSString*)redirectUrl
                                   authContext:(ADAuthenticationContext*)authContext;

@property NSString* authority;
@property BOOL validateAuthority;
@property NSString* clientId;
@property NSString* redirectUrl;
@property BOOL useBroker;
@property ADAuthenticationContext* authContext;

@end

