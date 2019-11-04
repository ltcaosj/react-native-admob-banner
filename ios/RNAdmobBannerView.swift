//
//  RNAdmobBannerView.swift
//  ToeicListeningPractices
//
//  Created by Long Cao on 11/3/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import UIKit
import GoogleMobileAds

@objc(RNAdmobBannerView)
class RNAdmobBannerView: UIView {
  
    var bannerView: GADBannerView!
  
    @objc
    var onAdLoaded: RCTDirectEventBlock?
  
    @objc
    var onAdClicked: RCTDirectEventBlock?
  
    @objc
    var adUnitID: String?{
      set {
        self.bannerView.adUnitID = newValue
      }
      get {
        return self.bannerView.adUnitID
      }
    }
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
  
  override init(frame: CGRect) {
    super.init(frame: frame)    
    //
    bannerView = GADBannerView(adSize: kGADAdSizeBanner)
    //
    addBannerViewToView(bannerView)
    //
    bannerView.rootViewController = UIApplication.shared.keyWindow!.rootViewController
    bannerView.delegate = self
  }
  
  @objc
  func loadAd() {
    bannerView.load(GADRequest())
  }
  
  func addBannerViewToView(_ bannerView: GADBannerView) {
    self.addSubview(bannerView)
    bannerView.frame = self.frame
    bannerView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}

extension RNAdmobBannerView : GADBannerViewDelegate {
  func adViewDidReceiveAd(_ view: GADBannerView) {
    if onAdLoaded != nil {
      onAdLoaded!([:])
    }
  }
  
  func adViewWillLeaveApplication(_ adView: GADBannerView) {
    if onAdClicked != nil {
      onAdClicked!([:])
    }
  }
  
  func adViewWillPresentScreen(_ bannerView: GADBannerView)
  {
    if onAdClicked != nil {
      onAdClicked!([:])
    }
  }
}
