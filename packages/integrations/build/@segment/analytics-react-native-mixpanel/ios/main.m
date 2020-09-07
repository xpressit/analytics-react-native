//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Mixpanel/SEGMixpanelIntegrationFactory.h>)
#import <Segment_Mixpanel/SEGMixpanelIntegrationFactory.h>
#else
#import <Segment-Mixpanel/SEGMixpanelIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Mixpanel: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Mixpanel

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGMixpanelIntegrationFactory.instance];
}

@end
