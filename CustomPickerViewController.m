//
//  CustomPickerViewController.m
//  Pickers
//
//  Created by Vasilii on 29.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "CustomPickerViewController.h"

@interface CustomPickerViewController ()

@end

@implementation CustomPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.images = @[[UIImage imageNamed:@"seven"],
                    [UIImage imageNamed:@"bar"], [UIImage imageNamed:@"crown"], [UIImage imageNamed:@"cherry"], [UIImage imageNamed:@"lemon"], [UIImage imageNamed:@"apple"]];
    srandom(time(NULL)); //генератор случайных чисел
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
/*
- (IBAction) spin {
    
    BOOL win = NO;
    int numInRow = 1;//слолько одинаковых значений было в строке до сих пор
    int lastVal = -1;
    for (int i = 0; i < 5; i++)
    {
        //Сравниваем новое значение с предыдущим и увеличиваем numInRow, если они совпада- ют. Если же нет, то сбрасываем значение numInRow в 1. Присваиваем новое значение пере- менной lastVal, чтобы можно было сравнить его в следующий раз.
        int newValue = random() % [self.images count];
        if (newValue == lastVal)
        {
            numInRow++;
        }
        else
        {
            numInRow = 1;
        }
        lastVal = newValue;
        
        //После этого устанавливаем новое значение для соответствующего компонента, запраши- ваем анимацию изменения и требуем от селектора перегрузки указанного компонента.
        [self.picker selectRow:newValue inComponent:i animated:YES];
        [self.picker reloadComponent:i];
        
        //проверяем, не получилось ли три одинаковых символа в строке, и если да — устанавливаем для переменной win значение YES.
        if (numInRow >= 3)
        {
            win = YES;
        }
    }
    if (win)
    {
        self.winLabel.text = @"WIN!";
    }
    else
    {
        self.winLabel.text = @"";
    }
}
*/
-(IBAction)spin
{
    BOOL win = NO;
    int numInRow = 1;
    int lastVal = -1;
    for (int i = 0; i < 5; i++)
    {
        int newValue = random() % [self.images count];
        if (newValue == lastVal)
        {
            numInRow++;
        }
        else
        {
            numInRow = 1;
        }
        lastVal = newValue;
        [self.picker selectRow:newValue inComponent:i animated:YES];
        [self.picker reloadComponent:i];
        if (numInRow >= 3)
        {
            win = YES;
        }
    }
    if (win)
    {
        self.winLabel.text = @"WIN!";
    }
    else
    {
        self.winLabel.text = @"";
    }
}

#pragma mark -
#pragma mark UIPickerViewDataSource Methods

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 5; }
- (NSInteger)pickerView:(UIPickerView *)pickerView
numberOfRowsInComponent:(NSInteger)component
{
    return [self.images count];
}

#pragma mark UIPickerViewDelegate Methods
- (UIView *)pickerView:(UIPickerView *)pickerView
            viewForRow:(NSInteger)row
          forComponent:(NSInteger)component reusingView:(UIView *)view
{
    UIImage *image = self.images[row];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    return imageView;
}

@end
