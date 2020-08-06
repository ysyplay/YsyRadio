//
//  YsyRadio.h
//  YsyRadioDemo
//
//  Created by LH on 8/5/20.
//  Copyright © 2020 ysyplay. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface YsyRadio : UIButton
@property (nonatomic, copy,readonly) NSString      *name;
@property (nonatomic, copy,readonly) NSString      *val;
///初始化
+ (YsyRadio *)creatRadioWithName:(NSString *)name val:(NSString *)val selected:(BOOL)selected;
@end


