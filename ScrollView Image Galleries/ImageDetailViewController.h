//
//  ImageDetailViewController.h
//  ScrollView Image Galleries
//
//  Created by Anthony Coelho on 2016-05-16.
//  Copyright © 2016 Anthony Coelho. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageDetailViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIScrollView *scrollView;
@property (strong, nonatomic) IBOutlet UIImageView *imageView;
@property (strong, nonatomic) UIImage *passedImage;


@end
