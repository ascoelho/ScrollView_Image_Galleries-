//
//  ViewController.m
//  ScrollView Image Galleries
//
//  Created by Anthony Coelho on 2016-05-16.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import "ViewController.h"
#import "ImageDetailViewController.h"

@interface ViewController ()
@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pageControl = [[UIPageControl alloc] init];
    self.pageControl.numberOfPages = 3;

    [self.view addSubview:self.pageControl];
    
    
    
    self.imageView1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse.jpg"]];
    self.imageView1.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView1.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView1.frame = CGRectZero;
    [self.scrollView addSubview:self.imageView1];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                attribute:NSLayoutAttributeLeading
                                                                relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeLeading
                                                               multiplier:1.0
                                                                 constant:0.0]];
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView1
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1.0
                                                                 constant:0.0]];



    self.imageView2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-night.jpg"]];
    self.imageView2.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView2.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView2.frame = CGRectZero;
    [self.scrollView addSubview:self.imageView2];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                   toItem:self.imageView1
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView2
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1.0
                                                                 constant:0.0]];
    

    self.imageView3 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"Lighthouse-in-Field.jpg"]];
    self.imageView3.translatesAutoresizingMaskIntoConstraints = NO;
    self.imageView3.contentMode = UIViewContentModeScaleAspectFit;
    self.imageView3.frame = CGRectZero;
    [self.scrollView addSubview:self.imageView3];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3
                                                                attribute:NSLayoutAttributeWidth
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeWidth
                                                               multiplier:1.0
                                                                 constant:0.0]];
    
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3
                                                                attribute:NSLayoutAttributeHeight
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeHeight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3
                                                                attribute:NSLayoutAttributeLeft
                                                                relatedBy:NSLayoutRelationGreaterThanOrEqual
                                                                   toItem:self.imageView2
                                                                attribute:NSLayoutAttributeRight
                                                               multiplier:1.0
                                                                 constant:0.0]];
    [self.scrollView addConstraint:[NSLayoutConstraint constraintWithItem:self.imageView3
                                                                attribute:NSLayoutAttributeCenterY
                                                                relatedBy:NSLayoutRelationEqual
                                                                   toItem:self.scrollView
                                                                attribute:NSLayoutAttributeCenterY
                                                               multiplier:1.0
                                                                 constant:0.0]];





}

- (void)viewDidLayoutSubviews {
    
    CGFloat combinedContentWidth = self.scrollView.frame.size.width * 3;
    self.scrollView.contentSize = CGSizeMake(combinedContentWidth, self.scrollView.frame.size.height);
    
    self.imageView1.tag = 1;
    self.imageView2.tag = 2;
    self.imageView3.tag = 3;
    
    self.imageView1.userInteractionEnabled = YES;
    self.imageView2.userInteractionEnabled = YES;
    self.imageView3.userInteractionEnabled = YES;
    
    UITapGestureRecognizer *tap1 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetailedImage:)];
    UITapGestureRecognizer *tap2 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetailedImage:)];
    UITapGestureRecognizer *tap3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetailedImage:)];

    [self.imageView1 addGestureRecognizer:tap1];
    [self.imageView2 addGestureRecognizer:tap2];
    [self.imageView3 addGestureRecognizer:tap3];

    
}



- (void)showDetailedImage:(UITapGestureRecognizer *)tap{
    
    
    [self performSegueWithIdentifier:@"showImage" sender:tap];

}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id) sender {
    
    UITapGestureRecognizer *tap = sender;
    
    ImageDetailViewController *imageDetailVC = (ImageDetailViewController *)[segue destinationViewController];
    
    if (tap.view.tag == 1) {
        imageDetailVC.passedImage = self.imageView1.image;
    }
    if (tap.view.tag == 2) {
        imageDetailVC.passedImage = self.imageView2.image;
    }
    if (tap.view.tag == 3) {
        imageDetailVC.passedImage = self.imageView3.image;
    }


    
}

- (void)scrollViewDidScroll:(UIScrollView *)sender {
    
    CGFloat pageWidth = self.scrollView.frame.size.width;
    NSInteger fractionPage = (NSInteger) (self.scrollView.contentOffset.x / pageWidth);
    
    self.pageControl.currentPage = fractionPage;
    
    NSLog(@"%ld",self.pageControl.currentPage);
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
