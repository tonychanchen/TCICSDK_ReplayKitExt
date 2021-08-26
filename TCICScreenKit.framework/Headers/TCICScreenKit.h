//
//  TCICScreenKit.h
//  ScreenKit
//
//  Created by 陈耀武 on 2021/1/13.
//  Copyright © 2021 陈耀武. All rights reserved.
//
// TCICScreenKitVersion : 1.0.0.2451
// TCICScreenKitGitCommitID : a25b549a53b88ec060e38740ef6e9e2287a2cc8b

#import <Foundation/Foundation.h>
#import <ReplayKit/ReplayKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TCICScreenKit : NSObject

+ (instancetype)sharedScreenKit;

/**
 * 在- (void)broadcastStartedWithSetupInfo:(nullable NSDictionary <NSString *, NSObject *> *)setupInfo;中调用，通知TCICSDK开始录制
 */
- (void)onScreenKitStarted;

/**
* 在- (void)broadcastPaused;中调用，通知TCICSDK暂停录制
*/
- (void)onScreenKitPaused;

/**
* 在- (void)broadcastResumed;中调用，通知TCICSDK恢复录制
*/
- (void)onScreenKitResumed;

/**
* 在- (void)broadcastFinished;中调用，通知TCICSDK结束录制
*/
- (void)onScreenKitFinished;

/**
* 在- (void)processSampleBuffer中调用，通知TCICSDK处理视频帧的设备方向
*/
- (void)processSampleBuffer:(CMSampleBufferRef)sampleBuffer withType:(RPSampleBufferType)sampleBufferType;
@end

NS_ASSUME_NONNULL_END
