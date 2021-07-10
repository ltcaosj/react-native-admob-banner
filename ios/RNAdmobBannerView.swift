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
  func bannerViewDidReceiveAd(_ view: GADBannerView) {
    if onAdLoaded != nil {
      onAdLoaded!([:])
    }
  }
  
func bannerView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: Error) {
  //print("bannerView:didFailToReceiveAdWithError: \(error.localizedDescription)")
}

func bannerViewDidRecordClick(_ bannerView: GADBannerView) {
    //print("bannerViewDidRecordClick")
    if onAdClicked != nil {
          onAdClicked!([:])
    }
}
func bannerViewDidRecordImpression(_ bannerView: GADBannerView) {
  //print("bannerViewDidRecordImpression")
}

func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
  //print("bannerViewWillPresentScreen")
}

func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
  //print("bannerViewWillDIsmissScreen")
}

func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
  //print("bannerViewDidDismissScreen")
}
}

