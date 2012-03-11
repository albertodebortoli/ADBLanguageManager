//
//  ADBLanguageManager.h
//  ADBLanguageMangerDemo
//
//  Created by Alberto De Bortoli on 11/03/12.
//  Copyright (c) 2012 Toni Sala, Alberto De Bortoli. All rights reserved.
//  Original code by Toni Sala, from http://indiedevstories.com/2011/11/08/a-reusable-localization-manager-class-for-ios/
//

#import <Foundation/Foundation.h>

#define ADBLocalizedString(key)\
    [ADBLanguageManager localizedString:(key)]

// Supported languages.
#define kLMDefaultLanguage  @"en"
#define	kLMEnglish          @"en"
#define	kLMItalian          @"it"
#define	kLMSpanish          @"es"
#define	kLMFrench           @"fr"
#define	kLMGerman           @"de"

#define kLMSelectedLanguageKey  @"kLMSelectedLanguageKey"

@interface ADBLanguageManager : NSObject;

+ (BOOL)isSupportedLanguage:(NSString *)language;
+ (NSString *)localizedString:(NSString *)key;
+ (void)setSelectedLanguage:(NSString*)language;
+ (NSString *)selectedLanguage;

@end