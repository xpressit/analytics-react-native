//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_ComScore/SEGComScoreIntegrationFactory.h>)
#import <Segment_ComScore/SEGComScoreIntegrationFactory.h>
#else
#import <Segment-ComScore/SEGComScoreIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_ComScore: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_ComScore

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGComScoreIntegrationFactory.instance];
}

@end
