//
//  ViewController.m
//  ADBLanguageMangerDemo
//
//  Created by Alberto De Bortoli on 11/03/12.
//  Copyright (c) 2012 Alberto De Bortoli. All rights reserved.
//

#import "ViewController.h"
#import "ADBLanguageManager.h"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - UIPickerViewDelegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    switch (row) {
        case 0:
            return @"Default language";
            break;
        case 1:
            return @"English (en)";
            break;
        case 2:
            return @"Italian (it)";
            break;
        case 3:
            return @"Spanish (es)";
            break;
        case 4:
            return @"French (fr)";
            break;
        case 5:
            return @"German (de)";
            break;
        default:
            break;
    }
    return @"";
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    switch (row) {
        case 0:
            [ADBLanguageManager setSelectedLanguage:kLMDefaultLanguage];
            break;
        case 1:
            [ADBLanguageManager setSelectedLanguage:kLMEnglish];
            break;
        case 2:
            [ADBLanguageManager setSelectedLanguage:kLMItalian];
            break;
        case 3:
            [ADBLanguageManager setSelectedLanguage:kLMSpanish];
            break;
        case 4:
            [ADBLanguageManager setSelectedLanguage:kLMFrench];
            break;
        case 5:
            [ADBLanguageManager setSelectedLanguage:kLMGerman];
            break;
        default:
            break;
    }
    
    [localizedLabel setText:ADBLocalizedString(@"Good morning")];
    [languageLabel setText:[ADBLanguageManager selectedLanguage]];
}

#pragma mark - UIPickerViewDatasource

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 6;
}

@end
