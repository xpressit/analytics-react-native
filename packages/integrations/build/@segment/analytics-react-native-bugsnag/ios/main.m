//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Bugsnag/SEGBugsnagIntegrationFactory.h>)
#import <Segment_Bugsnag/SEGBugsnagIntegrationFactory.h>
#else
#import <Segment-Bugsnag/SEGBugsnagIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Bugsnag: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Bugsnag

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGBugsnagIntegrationFactory.instance];
}

@end
