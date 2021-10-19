//
//  CLViewController.m
//  CLDemoTools
//
//  Created by InSeekFame on 10/19/2021.
//  Copyright (c) 2021 InSeekFame. All rights reserved.
//

#import "CLViewController.h"
#import "KHBarButton.h"
#import "CLDemoTools.h"

@interface CLViewController ()

@end

@implementation CLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    KHBarButton *barBtn = [KHBarButton buttonWithType:UIButtonTypeSystem];
    barBtn.frame = CGRectMake(20, 100, 200, 44);
    [barBtn setTitle:@"组件KHBarButton" forState:UIControlStateNormal];
    [self.view addSubview:barBtn];
    [barBtn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    
    
    
}

- (void)btnClick{
    NSLog(@"btnClick");
    [self addImageDemo];
}

- (void)addImageDemo {
    UIImage *img = [CLDemoTools getToolsBundleImage:@"xue"];
    UIImageView *iV = [[UIImageView alloc] initWithFrame:CGRectMake(50, 100, img.size.width, img.size.height)];
    iV.image = img;
    
    [self.view addSubview:iV];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
