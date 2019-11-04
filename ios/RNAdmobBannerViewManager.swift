//
//  RNAdmobBannerViewManager.swift
//  ToeicListeningPractices
//
//  Created by Long Cao on 11/3/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import UIKit

@objc(RNAdmobBannerViewManager)
class RNAdmobBannerViewManager: RCTViewManager {
  
  @objc static override func requiresMainQueueSetup() -> Bool {
    return true
  }
  
  override func view() -> UIView! {
    return RNAdmobBannerView()
  }
  
  @objc
  func loadAd(_ node: NSNumber) { // 1
    DispatchQueue.main.async {      
      let component = self.bridge.uiManager.view(
        forReactTag: node
        ) as! RNAdmobBannerView
      component.loadAd()
    }
  }
  
}
