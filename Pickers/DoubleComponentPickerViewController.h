//
//  DoubleComponentPickerViewController.h
//  Pickers
//
//  Created by Vasilii on 27.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import <UIKit/UIKit.h>

//две константы левый компонент (начинка) - 0, правый 1
#define kFillingComponent 0
#define kBreadComponent 1


@interface DoubleComponentPickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property(strong, nonatomic) IBOutlet UIPickerView *doublePicker;
@property(strong, nonatomic) NSArray *fillingTypes;
@property(strong, nonatomic) NSArray *breadTypes;

-(IBAction)buttonPressed;

@end
