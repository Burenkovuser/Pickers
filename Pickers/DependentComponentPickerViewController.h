//
//  DependentComponentPickerViewController.h
//  Pickers
//
//  Created by Vasilii on 27.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>
#define kStateComponent 0
#define kZipComponent 1

@interface DependentComponentPickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property(strong, nonatomic) IBOutlet UIPickerView *dependentPicker;
@property(strong, nonatomic) NSDictionary *stateZips;
@property(strong, nonatomic) NSArray *states;
@property(strong, nonatomic) NSArray *zips;

-(IBAction) buttonPressed;

@end
