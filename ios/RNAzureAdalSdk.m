
#import "RNAzureAdalSdk.h"
#import <ADAL/ADAL.h>

@implementation RNAzureAdalSdk

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()
/**
 * @param authority         Authority url to send code and token requests
 * @param graphURI          graphURI url from microsoft
 * @param clientId          required client identifier.
 * @param redirectUrl       Optional. It will use packagename and provided suffix
 *                          for this.
 */

RCT_REMAP_METHOD(acquireToken,
                 clientId:(NSString *)clientId
                 graphURI:(NSString *)graphURI
                 authority:(NSString *) authority
                 redirectUri:(NSString *) redirectUri
                 resolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject ){
    
    @try{
        NSURL *urlRedirectUri = [NSURL URLWithString:redirectUri];
        ADAuthenticationError *error = nil;
        authContext = [ADAuthenticationContext authenticationContextWithAuthority:authority
                                                                            error:&error];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            [authContext acquireTokenWithResource:graphURI
                                         clientId:clientId  // Comes from App Portal
                                      redirectUri:urlRedirectUri // Comes from App Portal
                                  completionBlock:^(ADAuthenticationResult *result)
             {
                 if (AD_SUCCEEDED != result.status){
                     // display error on the screen
                      reject( [[NSString alloc] initWithFormat:@"%d", result.error.code], result.error.errorDetails, result.error );
                 }
                 else{
                     resolver(result.accessToken);
                 }
             }];
            
        });
    }
    @catch (ADAuthenticationError *error)
    {
        reject( [[NSString alloc] initWithFormat:@"%d", error.code], error.errorDetails, error );
    }
}

@end

