//
//  RNAdmobBannerViewManager.m
//  ToeicListeningPractices
//
//  Created by Long Cao on 11/3/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "React/RCTViewManager.h"

@interface RCT_EXTERN_MODULE(RNAdmobBannerViewManager, RCTViewManager)
  RCT_EXPORT_VIEW_PROPERTY(adUnitID, NSString)
  RCT_EXPORT_VIEW_PROPERTY(onAdLoaded, RCTDirectEventBlock)
  RCT_EXPORT_VIEW_PROPERTY(onAdClicked, RCTDirectEventBlock)
  RCT_EXTERN_METHOD(loadAd:(nonnull NSNumber *)node)
@end
