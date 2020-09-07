//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Countly/SEGCountlyIntegrationFactory.h>)
#import <Segment_Countly/SEGCountlyIntegrationFactory.h>
#else
#import <Segment-Countly/SEGCountlyIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Countly: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Countly

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGCountlyIntegrationFactory.instance];
}

@end
