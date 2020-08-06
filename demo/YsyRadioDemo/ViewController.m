//
//  ViewController.m
//  YsyRadioDemo
//
//  Created by LH on 8/5/20.
//  Copyright © 2020 ysyplay. All rights reserved.
//

#import "ViewController.h"
#import "YsyRadios.h"
@interface ViewController ()
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"YsyRadioDemo";
    
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(20, 300, 200, 30)];
    [self.view addSubview:label];
    
    YsyRadio *radio1 = [YsyRadio creatRadioWithName:@"苹果" val:@"1" selected:YES];
    radio1.frame = CGRectMake(20, 100, 100, 30);
    YsyRadio *radio2 = [YsyRadio creatRadioWithName:@"梨子" val:@"2" selected:NO];
    radio2.frame = CGRectMake(20, 140, 100, 30);
    YsyRadio *radio3 = [YsyRadio creatRadioWithName:@"香蕉" val:@"3" selected:NO];
    radio3.frame = CGRectMake(20, 180, 100, 30);
    [YsyRadioGroup onView:self.view select:^(YsyRadio *radio) {
        label.text = [NSString stringWithFormat:@"name:%@  val:%@",radio.name,radio.val];
    } radios:radio1,radio2,radio3,nil];
    
}


@end
