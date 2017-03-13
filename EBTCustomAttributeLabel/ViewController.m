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

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

    NSString *text = @"Lorem ipsum dolor sit amet";
    [self.lbl_Content attributeLinkLabelText:text withLinksAttribute:nil withLinkClickCompleteHandler:^(NSInteger linkedURLTag) {
        NSLog(@"linkedURLTag =%ld",linkedURLTag);
        
    } withUnderLineTextString:@" amet",@" sit",nil];
    

}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)attributedLabel:(TTTAttributedLabel *)label
   didSelectLinkWithURL:(NSURL *)url{

    NSLog(@"url=%@",url);
}


@end
