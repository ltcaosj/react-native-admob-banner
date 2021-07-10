//
//  DownloadManager.swift
//  toeiclistening
//
//  Created by Long Cao on 7/26/18.
//  Copyright © 2018 Facebook. All rights reserved.
//
import AppTrackingTransparency
import AdSupport

@objc(RNAdUtilsManager)
class RNAdUtilsManager: RCTEventEmitter {
  
  override static func requiresMainQueueSetup() -> Bool {
    return false
  }
  
  // we need to override this method and
  // return an array of event names that we can listen to
  override func supportedEvents() -> [String]! {
    return []
  }
  
  @objc
  func clearCacheDirectory()
  {
    
  }

    @objc
    func askAppTrackingTransparency() {
      if #available(iOS 14, *) {
          ATTrackingManager.requestTrackingAuthorization(completionHandler: { status in
              // Tracking authorization completed. Start loading ads here.
              // loadAd()
          })
      } else {
          // Fallback on earlier versions
      }
    }
}
