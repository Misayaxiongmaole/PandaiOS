//
//  UIImage+PDImage.m
//  day by day
//
//  Created by mac on 2019/8/30.
//  Copyright © 2019年 mac. All rights reserved.
//

#import "UIImage+PDImage.h"

@implementation UIImage (PDImage)

+(UIImage *)imageOriginalWithName:(NSString *)imageName{
    UIImage *image = [UIImage imageNamed:imageName];
    
    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    return image;
}

@end
