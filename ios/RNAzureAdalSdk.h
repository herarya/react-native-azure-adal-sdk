#import <Foundation/Foundation.h>
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

// Implements react-native plugin for Microsoft Azure ADAL
@interface RNAzureAdalSdk : NSObject <RCTBridgeModule>

@end
