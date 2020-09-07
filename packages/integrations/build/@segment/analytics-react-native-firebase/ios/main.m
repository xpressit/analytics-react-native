//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Firebase/SEGFirebaseIntegrationFactory.h>)
#import <Segment_Firebase/SEGFirebaseIntegrationFactory.h>
#else
#import <Segment-Firebase/SEGFirebaseIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Firebase: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Firebase

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:SEGFirebaseIntegrationFactory.instance];
}

@end
