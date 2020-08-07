//
//  YsyRadio.m
//  YsyRadioDemo
//
//  Created by LH on 8/5/20.
//  Copyright © 2020 ysyplay. All rights reserved.
//

#import "YsyRadio.h"
@interface YsyRadio()
@property (nonatomic, copy)   NSString *name;
@property (nonatomic, copy)   NSString *val;

@end

@implementation YsyRadio
+ (YsyRadio *)creatRadioWithName:(NSString *)name val:(NSString *)val selected:(BOOL)selected{
    YsyRadio *radio = [YsyRadio buttonWithType:UIButtonTypeCustom];
    [radio setImage:[UIImage imageNamed:@"unSelectRadio"]  forState:UIControlStateNormal];
    [radio setImage:[UIImage imageNamed:@"selectRadio"] forState:UIControlStateSelected];
    [radio setTitle:[NSString stringWithFormat:@"  %@",name] forState:UIControlStateNormal];
    [radio setTitleColor:[UIColor darkTextColor] forState:UIControlStateNormal];
    radio.name = name;
    radio.val  = val;
    radio.selected = selected;
    radio.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    return radio;
}
@end
