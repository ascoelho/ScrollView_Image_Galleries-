//
//  ViewController.h
//  ScrollView Image Galleries
//
//  Created by Anthony Coelho on 2016-05-16.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIScrollViewDelegate>
@property (strong, nonatomic) IBOutlet UIScrollView *scrollView;

@property (strong, nonatomic) UIPageControl *pageControl;

@property (strong, nonatomic) UIImageView *imageView1;
@property (strong, nonatomic) UIImageView *imageView2;
@property (strong, nonatomic) UIImageView *imageView3;




@end

