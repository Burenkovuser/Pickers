//
//  SingleComponentPickerViewController.m
//  Pickers
//
//  Created by Vasilii on 27.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "SingleComponentPickerViewController.h"

@interface SingleComponentPickerViewController ()

@end

@implementation SingleComponentPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Дополнительная настройка после загрузки представления из nib-файла
    self.characterNames = @[@"Luke", @"Leia", @"Han", @"Chewbacca", @"Artoo",
    @"Threepio", @"Lando"];
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

-(void)buttonPressed {
    NSInteger row = [self.singlPicker selectedRowInComponent:0];
    NSString *selected = self.characterNames[row];
    NSString *title = [[NSString alloc] initWithFormat:@"You selected %@", selected];
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                          message:@"Thank you for choosing."
                        delegate:nil
                        cancelButtonTitle:@"You’re Welcome" otherButtonTitles:nil];
    [alert show];
}

#pragma mark -
#pragma mark Picker Data Source Methods
- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView//количество выводимых компонентов
{
    return 1;
}
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component //количество строк
{
    return [self.characterNames count];
}
#pragma mark Picker Delegate Methods
- (NSString *)pickerView:(UIPickerView *)pickerView //данные для
             titleForRow:(NSInteger)row
            forComponent:(NSInteger)component
{
    return self.characterNames[row];
}


@end
