//
//  ViewController.h
//  ADBLanguageMangerDemo
//
//  Created by Alberto De Bortoli on 11/03/12.
//  Copyright (c) 2012 Alberto De Bortoli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource> {
    
    IBOutlet UILabel *localizedLabel;
    IBOutlet UILabel *languageLabel;
}

@end
