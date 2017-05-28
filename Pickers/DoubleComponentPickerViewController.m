//
//  DoubleComponentPickerViewController.m
//  Pickers
//
//  Created by Vasilii on 27.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "DoubleComponentPickerViewController.h"

@interface DoubleComponentPickerViewController ()

@end

@implementation DoubleComponentPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Дополнительная настройка после загрузки представления
    self.fillingTypes = @[@"Ham", @"Turkey", @"Peanut Butter",
    @"Tuna Salad", @"Chicken Salad", @"Roast Beef", @"Vegemite"];
    self.breadTypes = @[@"White", @"Whole Wheat", @"Rye", @"Sourdough", @"Seven Grain"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

-(IBAction)buttonPressed {
    
    NSInteger fillingRow = [self.doublePicker selectedRowInComponent: kFillingComponent];
    NSInteger breadRow = [self.doublePicker selectedRowInComponent: kBreadComponent];
    NSString *filling = [self.fillingTypes objectAtIndex:fillingRow]; NSString *bread = [self.breadTypes objectAtIndex:breadRow];
    NSString *message = [[NSString alloc] initWithFormat: @"Your %@ on %@ bread will be right up.", filling, bread];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:
                          @"Thank you for your order"
                                                    message:message
                                                    delegate:nil cancelButtonTitle:@"Great!"
                                                    otherButtonTitles:nil];
    [alert show];
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView // состоит из двух компонентов
{
    return 2;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component == kBreadComponent)
    {
        return [self.breadTypes count];
    }
    else
    {
        return [self.fillingTypes count];
    }
}
#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    if (component == kBreadComponent)
    {
        return self.breadTypes[row];
    }
    else
    {
        return self.fillingTypes[row];
    }
}


@end
