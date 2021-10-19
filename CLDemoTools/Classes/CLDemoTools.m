//
//  CLDemoTools.m
//  CLDemoTools
//
//  Created by MAC on 2021/10/19.
//

#import "CLDemoTools.h"

@implementation CLDemoTools

///获取DYDemoTools这个Bundle的图片
+ (UIImage *)getToolsBundleImage:(NSString *)imageName {
    static NSBundle *bundle;
    if (bundle == nil) {
        bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:NSClassFromString(@"CLDemoTools")] pathForResource:@"CLDemoTools" ofType:@"bundle"]];
    }
    
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    if (image == nil) {
        image = [UIImage imageNamed:imageName];
    }
    
    return image;
}


@end
