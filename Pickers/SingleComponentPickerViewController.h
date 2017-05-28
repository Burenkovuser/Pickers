//
//  SingleComponentPickerViewController.h
//  Pickers
//
//  Created by Vasilii on 27.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SingleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property(strong, nonatomic) IBOutlet UIPickerView *singlPicker;
@property(strong, nonatomic) NSArray *characterNames;

-(IBAction) buttonPressed;

@end
