//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Crittercism/SEGCrittercismIntegrationFactory.h>)
#import <Segment_Crittercism/SEGCrittercismIntegrationFactory.h>
#else
#import <Segment-Crittercism/SEGCrittercismIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Crittercism: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Crittercism

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGCrittercismIntegrationFactory.instance];
}

@end
