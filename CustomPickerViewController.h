//
//  CustomPickerViewController.h
//  Pickers
//
//  Created by Vasilii on 29.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property(strong, nonatomic) IBOutlet UIPickerView *picker;
@property(strong, nonatomic) IBOutlet UILabel *winLabel;
@property(strong, nonatomic) NSArray *images;

- (IBAction)spin;

@end
