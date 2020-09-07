//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Appboy/SEGAppboyIntegrationFactory.h>)
#import <Segment_Appboy/SEGAppboyIntegrationFactory.h>
#else
#import <Segment-Appboy/SEGAppboyIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Appboy: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Appboy

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGAppboyIntegrationFactory.instance];
}

@end
