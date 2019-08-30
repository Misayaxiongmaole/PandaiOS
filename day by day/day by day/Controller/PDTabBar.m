//
//  PDTabBar.m
//  day by day
//
//  Created by mac on 2019/8/30.
//  Copyright © 2019年 mac. All rights reserved.
//

#import "PDTabBar.h"

@implementation PDTabBar



-(void)LayoutSubviews{
    
    [super LayoutSubviews];
    
   
    CGFloat kbtnW = self.frame.size.width/5.0;
    CGFloat kbtnH = self.frame.size.height/5.0;
    CGFloat KbtnX = 0;
    NSInteger i = 0;
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:NSClassFromString(@"UITabBarButton")]) {
            if (i == 2) {
                i += 1;
            }
            KbtnX = i*kbtnW;
            view.frame = CGRectMake(KbtnX, 0, kbtnW, kbtnH);
            
            i++;
        }
   
    }
    
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
