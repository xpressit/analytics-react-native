//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Taplytics/SEGTaplyticsIntegrationFactory.h>)
#import <Segment_Taplytics/SEGTaplyticsIntegrationFactory.h>
#else
#import <Segment-Taplytics/SEGTaplyticsIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Taplytics: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Taplytics

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGTaplyticsIntegrationFactory.instance];
}

@end
