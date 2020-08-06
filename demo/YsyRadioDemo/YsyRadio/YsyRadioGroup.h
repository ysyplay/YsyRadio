//
//  YsyRadioGroup.h
//  YsyRadioDemo
//
//  Created by LH on 8/5/20.
//  Copyright © 2020 ysyplay. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@class YsyRadio;
typedef void(^radioSelect)(YsyRadio *radio);

@interface YsyRadioGroup : UIView
/// 核心方法
/// @param view   父视图
/// @param select 点击选择的回掉block(block里需避免循环引用！请用weakSelf)
/// @param radio  可变参数，可往里添加多个radio对象，组成一组
+ (YsyRadioGroup *)onView:(UIView *)view select:(radioSelect)select radios:(YsyRadio *)radio, ...;

/// 获取已选中的radio
- (YsyRadio *)getSelectedRadio;
@end
