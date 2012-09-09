//
//  cannelconViewController.h
//  CannelCon
//
//  Created by 陳 駿逸 on 12/9/7.
//  Copyright (c) 2012年 陳 駿逸. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cannelconViewController : UIViewController <UIScrollViewDelegate>

@property (nonatomic, strong) IBOutlet UIScrollView *scrollView;
@property (nonatomic, strong) IBOutlet UIPageControl *pageControl;

- (IBAction)changePage:(id)sender;

- (void)previousPage;
- (void)nextPage;

@end
