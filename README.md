# YsyRadio

   在html中有个很常用的组件radio，在日常开发中经常能够遇到。然而很遗憾UIKit并没有提供这一组件，导致在开发类似的功能时，时常需要写一些无关业务的冗余代码，极其的不优雅。于是乎封装一个简单易用，小巧灵活的redio组件在某个无所事事的下午被我提上日程。
  
先上[demo地址](https://github.com/ysyplay/YsyRadio)

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

![demo样图](https://upload-images.jianshu.io/upload_images/13492225-cb7d5039cdccc602.png?imageMogr2/auto-orient/strip%7CimageView2/2/w/1240)

 可以看到这里所有使用代码都在这里，api设计的也很简单。对项目友好无入侵，有需要的同学可以打开demo尝试一下。要是你觉得好用，请点亮小星星🌟。


