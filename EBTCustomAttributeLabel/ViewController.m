//
//  ViewController.m
//  EBTCustomAttributeLabel
//
//  Created by MJ on 2017/3/13.
//  Copyright © 2017年 com.csst.www. All rights reserved.
//

#import "ViewController.h"
#import "EBTAttributeLinkClickLabel.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet EBTAttributeLinkClickLabel *lbl_Content;
@property (weak, nonatomic) IBOutlet UILabel *lbl_Result;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    NSString *text = @"已阅读并同意《发标授权协议》《代扣协议》";
     __weak typeof(self)weakSelf = self;
    [self.lbl_Content attributeLinkLabelText:text withLinksAttribute:nil  withActiveLinkAttributes:nil withLinkClickCompleteHandler:^(NSInteger linkedURLTag) {
        
         __strong typeof(weakSelf)strongSelf = weakSelf;
        strongSelf.lbl_Result.text = [NSString stringWithFormat:@"当前点击的tag%ld",linkedURLTag];
        NSLog(@"linkedURLTag =%ld",linkedURLTag);
        
        
        
        
    } withUnderLineTextString:@"《发标授权协议》",@"《代扣协议》",nil];
    

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
