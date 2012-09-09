//
//  DefaultSettingsViewController.h
//  CannelCon
//
//  Created by 陳 駿逸 on 12/9/7.
//  Copyright (c) 2012年 陳 駿逸. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DefaultSettingsViewController : UIViewController <PFLogInViewControllerDelegate, PFSignUpViewControllerDelegate>

@property (nonatomic, strong) IBOutlet UILabel *welcomeLabel;

- (IBAction)logOutButtonTapAction:(id)sender;

@end
