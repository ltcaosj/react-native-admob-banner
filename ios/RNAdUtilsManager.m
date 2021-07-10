#import <Foundation/Foundation.h>

#import "React/RCTBridgeModule.h"
#import "React/RCTEventEmitter.h"

@interface RCT_EXTERN_MODULE(RNAdUtilsManager, RCTEventEmitter) //To support event emitter

RCT_EXTERN_METHOD(askAppTrackingTransparency)

@end
