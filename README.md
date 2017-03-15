# label添加下划线以及实现添加点击事件


<pre>
     NSString *text = @"已阅读并同意《发标授权协议》《代扣协议》";
     __weak typeof(self)weakSelf = self;
    [self.lbl_Content attributeLinkLabelText:text withLinksAttribute:nil  withActiveLinkAttributes:nil      withLinkClickCompleteHandler:^(NSInteger linkedURLTag) {
         __strong typeof(weakSelf)strongSelf = weakSelf;
        strongSelf.lbl_Result.text = [NSString stringWithFormat:@"当前点击的tag%ld",linkedURLTag];
        NSLog(@"linkedURLTag =%ld",linkedURLTag); 
    } withUnderLineTextString:@"《发标授权协议》",@"《代扣协议》",nil];
    

</pre>


#效果图

![Image](https://github.com/KBvsMJ/EBTCustomAttributeLabel/blob/master/demogif/1.gif)
