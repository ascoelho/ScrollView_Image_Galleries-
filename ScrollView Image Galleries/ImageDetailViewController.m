//
//  ImageDetailViewController.m
//  ScrollView Image Galleries
//
//  Created by Anthony Coelho on 2016-05-16.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import "ImageDetailViewController.h"

@interface ImageDetailViewController () <UIScrollViewDelegate>

@end

@implementation ImageDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.scrollView.delegate=self;
    self.scrollView.minimumZoomScale = 1;
    self.scrollView.maximumZoomScale = 10;
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    
    
    
    return self.imageView;
    
    
}

@end