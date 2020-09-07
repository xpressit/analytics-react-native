//
//  main.m
//  RNAnalyticsIntegration
//
//  Created by fathy on 05/08/2018.
//  Copyright © 2020 Segment.io, Inc. All rights reserved.
//

#import <React/RCTBridgeModule.h>
#import <RNAnalytics/RNAnalytics.h>
#if defined(__has_include) && __has_include(<Segment_Branch/BNCBranchIntegrationFactory.h>)
#import <Segment_Branch/BNCBranchIntegrationFactory.h>
#else
#import <Segment-Branch/BNCBranchIntegrationFactory.h>
#endif

@interface RNAnalyticsIntegration_Branch: NSObject<RCTBridgeModule>
@end

@implementation RNAnalyticsIntegration_Branch

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(setup) {
    [RNAnalytics addIntegration:BNCBranchIntegrationFactory.instance];
}

@end
