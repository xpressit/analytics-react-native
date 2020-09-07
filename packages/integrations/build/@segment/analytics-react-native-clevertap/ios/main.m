//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_CleverTap/SEGCleverTapIntegrationFactory.h>)
#import <Segment_CleverTap/SEGCleverTapIntegrationFactory.h>
#else
#import <Segment-CleverTap/SEGCleverTapIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_CleverTap: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_CleverTap

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGCleverTapIntegrationFactory.instance];
}

@end
