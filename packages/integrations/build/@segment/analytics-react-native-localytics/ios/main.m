//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Localytics/SEGLocalyticsIntegrationFactory.h>)
#import <Segment_Localytics/SEGLocalyticsIntegrationFactory.h>
#else
#import <Segment-Localytics/SEGLocalyticsIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Localytics: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Localytics

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGLocalyticsIntegrationFactory.instance];
}

@end
