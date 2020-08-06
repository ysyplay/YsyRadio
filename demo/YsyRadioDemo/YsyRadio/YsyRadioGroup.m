//
//  YsyRadioGroup.m
//  YsyRadioDemo
//
//  Created by LH on 8/5/20.
//  Copyright © 2020 ysyplay. All rights reserved.
//

#import "YsyRadioGroup.h"
#import "YsyRadio.h"

@interface YsyRadioGroup()
@property (nonatomic, copy ) radioSelect selected;
@property (nonatomic, strong) NSMutableArray<UIButton *> *group;
@end

@implementation YsyRadioGroup
- (instancetype)init
{
    self = [super init];
    if (self) {
        _group = [[NSMutableArray alloc] initWithCapacity:0];
    }
    return self;
}
+ (YsyRadioGroup *)onView:(UIView *)view select:(radioSelect)select radios:(YsyRadio *)radio, ...{
    YsyRadioGroup *radioGroup = [[YsyRadioGroup alloc] init];
    [view addSubview:radioGroup];
    radioGroup.selected = select;
    va_list params; //定义一个指向个数可变的参数列表指针;
    va_start(params,radio);//va_start 得到第一个可变参数地址,
    YsyRadio *arg;
    if (radio) {
        [radio  addTarget:radioGroup action:@selector(radioClick:) forControlEvents:UIControlEventTouchUpInside];
        [radioGroup.group addObject:radio];
        [view addSubview:radio];
        if (radio.selected) {
            select(radio);
        }
        //va_arg 指向下一个参数地址
        //这里是问题的所在 网上的例子，没有保存第一个参数地址，后边循环，指针将不会在指向第一个参数
        while( (arg = va_arg(params,YsyRadio *)) )
        {
            if ( arg )
            {
                [radioGroup.group addObject:arg];
                [view addSubview:arg];
                [arg addTarget:radioGroup action:@selector(radioClick:) forControlEvents:UIControlEventTouchUpInside];
                if (arg.selected) {
                    select(radio);
                }
            }
        }
        //置空
        va_end(params);
    }
    return radioGroup;
}
- (YsyRadio *)getSelectedRadio{
    for (YsyRadio *obj in _group) {
        if (obj.selected) {
            return obj;
        }
    }
    return nil;
}
- (void)radioClick:(YsyRadio *)radio{
    for (YsyRadio *obj in _group) {
        obj.selected = NO;
    }
    radio.selected =YES;
    if (_selected) {
        _selected(radio);
    }
}
@end
