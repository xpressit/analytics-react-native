//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Flurry/SEGFlurryIntegrationFactory.h>)
#import <Segment_Flurry/SEGFlurryIntegrationFactory.h>
#else
#import <Segment-Flurry/SEGFlurryIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Flurry: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Flurry

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGFlurryIntegrationFactory.instance];
}

@end
