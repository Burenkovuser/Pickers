//
//  DatePickerViewController.h
//  Pickers
//
//  Created by Vasilii on 27.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePickerViewController : UIViewController

@property(strong, nonatomic) UIDatePicker *dataPicker;
-(IBAction) buttonPressed;

@end
