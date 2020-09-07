//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Amplitude/SEGAmplitudeIntegrationFactory.h>)
#import <Segment_Amplitude/SEGAmplitudeIntegrationFactory.h>
#else
#import <Segment-Amplitude/SEGAmplitudeIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Amplitude: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Amplitude

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGAmplitudeIntegrationFactory.instance];
}

@end
