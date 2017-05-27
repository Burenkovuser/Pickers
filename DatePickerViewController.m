//
//  DatePickerViewController.m
//  Pickers
//
//  Created by Vasilii on 27.05.17.
//  Copyright © 2017 Vasilii Burenkov. All rights reserved.
//

#import "DatePickerViewController.h"

@interface DatePickerViewController ()

@end

@implementation DatePickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSDate *now = [NSDate date];
    [self.dataPicker setDate:now animated:NO];
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
    NSDate *selected = [self.dataPicker date];
    NSString *message = [NSString stringWithFormat:@"The day and time your selected is: %@", selected];
    
    UIAlertView * allert = [[UIAlertView alloc]
                            initWithTitle:@"Date and Time Selected"
                            message:message
                            delegate:nil
                            cancelButtonTitle:@"Yes, I did."otherButtonTitles:nil];
    [allert show];
    
}

@end
