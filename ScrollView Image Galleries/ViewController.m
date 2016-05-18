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
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIView *containerView = [UIView new];
//    containerView.translatesAutoresizingMaskIntoConstraints = NO;
//    containerView.frame = self.scrollView.frame;
//    
//    [self.scrollView addSubview:containerView];
    

    
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



    
    
    UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(showDetailedImage)];
    
    [self.scrollView addGestureRecognizer:tap];
}

- (void)viewDidLayoutSubviews {
    
    CGFloat combinedContentWidth = self.scrollView.frame.size.width * 3;
    self.scrollView.contentSize = CGSizeMake(combinedContentWidth, self.scrollView.frame.size.height);
    
}



- (void)showDetailedImage{
    
    [self performSegueWithIdentifier:@"showImage" sender:self];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(UITapGestureRecognizer *)tap {
    

//    ImageDetailViewController *imageDetailVC = [[ImageDetailViewController alloc] init];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
