//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Intercom/SEGIntercomIntegrationFactory.h>)
#import <Segment_Intercom/SEGIntercomIntegrationFactory.h>
#else
#import <Segment-Intercom/SEGIntercomIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Intercom: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Intercom

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGIntercomIntegrationFactory.instance];
}

@end
