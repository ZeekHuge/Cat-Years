//
//  catYearsViewController.h
//  Cat Years
//
//  Created by Mac-Mini Mtn on 9/9/15.
//  Copyright (c) 2015 zeekhuge. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface catYearsViewController : UIViewController<UITextFieldDelegate>

{
    
    __weak IBOutlet UILabel *catLabel;
    __weak IBOutlet UIImageView *catImageView;
    __weak IBOutlet UITextField *catAgeTextField;
    __weak IBOutlet UIButton *findCatAgeButton;
}


@end
