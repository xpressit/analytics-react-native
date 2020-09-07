//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_GoogleAnalytics/SEGGoogleAnalyticsIntegrationFactory.h>)
#import <Segment_GoogleAnalytics/SEGGoogleAnalyticsIntegrationFactory.h>
#else
#import <Segment-GoogleAnalytics/SEGGoogleAnalyticsIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Google_Analytics: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Google_Analytics

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGGoogleAnalyticsIntegrationFactory.instance];
}

@end
