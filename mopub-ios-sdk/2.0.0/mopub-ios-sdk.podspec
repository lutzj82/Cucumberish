Pod::Spec.new do |s|

  s.name         = "mopub-ios-sdk"
  s.version      = "2.0.0"
  s.summary      = "The Official MoPub Client SDK allows developers to easily monetize their apps by showing banner, interstitial, and native ads."
  s.description  = <<-eos
                    MoPub is a hosted ad serving solution built specifically for mobile publishers.
                    Grow your mobile advertising business with powerful ad management, optimization 
                    and reporting capabilities, and earn revenue by connecting to the world's largest 
                    mobile ad exchange. 

                    To learn more or sign up for an account, go to http://www.mopub.com. 
                    eos

  s.homepage     = "https://github.com/mopub/mopub-ios-sdk"
  s.license      = { :type => "New BSD", :file => "LICENSE" }
  s.author             = { "MoPub" => "support@mopub.com" }
  s.social_media_url   = "http://twitter.com/mopub"
  s.platform     = :ios, "5.0"
  s.source       = { :git => "https://github.com/mopub/mopub-ios-sdk.git", :tag => "2.0.0" }
  s.frameworks = "CoreGraphics", "CoreLocation", "CoreTelephony", "EventKit", "EventKitUI", "Foundation", "MediaPlayer", "QuartzCore", "SystemConfiguration", "UIKit"
  s.weak_frameworks = "AdSupport", "StoreKit"
  s.requires_arc = false
  s.default_subspec = 'MoPubSDK'

  s.subspec 'MoPubSDK' do |ss|
    ss.source_files = 'MoPubSDK/*.{h,m}'
    ss.resources    = 'MoPubSDK/**/*.{png,bundle,xib,nib}'
    ss.dependency 'mopub-ios-sdk/MoPubSDK/Internal'
    ss.dependency 'mopub-ios-sdk/MoPubSDK/Native Ads'

    ss.subspec 'Internal' do |sss|
      sss.source_files = 'MoPubSDK/Internal/**/*.{h,m}'
    end

    ss.subspec 'Native Ads' do |sss|
      sss.source_files = 'MoPubSDK/Native Ads/*.{h,m}'
      sss.dependency 'mopub-ios-sdk/MoPubSDK/Native Ads/Native Ads Internal'

      sss.subspec 'Native Ads Internal' do |ssss|
        ssss.source_files = 'MoPubSDK/Native Ads/Internal/**/*.{h,m}'
      end
    end
  end

  s.subspec 'Bundle-SDK' do |ss|
    ss.dependency 'mopub-ios-sdk/iAd'
    ss.dependency 'mopub-ios-sdk/Millennial'
    ss.dependency 'mopub-ios-sdk/AdMob'
  end

  s.subspec 'iAd' do |ss|
    ss.source_files = 'AdNetworkSupport/iAd/*.*'
    ss.dependency 'mopub-ios-sdk/MoPubSDK'
    ss.frameworks = "iAd"
  end

  s.subspec 'AdMob' do |ss|
    ss.source_files = 'AdNetworkSupport/GoogleAdMob/*.*'
    ss.dependency 'Google-Mobile-Ads-SDK', '~> 6.6.1'
    ss.dependency 'mopub-ios-sdk/MoPubSDK'
  end

  s.subspec 'Millennial' do |ss|
    ss.source_files = 'AdNetworkSupport/Millennial/*.*'
    ss.dependency 'MillennialMediaSDK', '~> 5.1.1'
    ss.dependency 'mopub-ios-sdk/MoPubSDK'
  end

    s.subspec 'Chartboost' do |ss|
    ss.source_files = 'AdNetworkSupport/Chartboost/*.*'
    ss.dependency 'ChartboostSDK', '~> 4.1.0'
    ss.dependency 'MoPubClient/Classes'
  end

  s.subspec 'Greystripe' do |ss|
    ss.source_files = 'AdNetworkSupport/Greystripe/*.*'
    ss.dependency 'GreystripeSDK', '~> 4.2.3'
    ss.dependency 'MoPubClient/Classes'
  end

  s.subspec 'InMobi' do |ss|
    ss.source_files = 'AdNetworkSupport/InMobi/*.*'
    ss.dependency 'InMobiSDK', '~> 4.1.0'
    ss.dependency 'MoPubClient/Classes'
  end

  s.subspec 'Vungle' do |ss|
    ss.source_files = 'AdNetworkSupport/Vungle/*.*'
    ss.dependency 'VungleAdvertiserSDK', '~> 1.4.3'
    ss.dependency 'MoPubClient/Classes'
  end

  s.subspec 'AdColony' do |ss|
    ss.source_files = 'AdNetworkSupport/AdColony/*.*'
    ss.dependency 'AdColony', '~> 2.2.4'
    ss.dependency 'MoPubClient/Classes'
  end

end
