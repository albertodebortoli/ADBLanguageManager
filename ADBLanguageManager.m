//
//  ADBLanguageManager.m
//  ADBLanguageMangerDemo
//
//  Created by Alberto De Bortoli on 11/03/12.
//  Copyright (c) 2012 Toni Sala, Alberto De Bortoli. All rights reserved.
//  Original code by Toni Sala, from http://indiedevstories.com/2011/11/08/a-reusable-localization-manager-class-for-ios/
//

#import "ADBLanguageManager.h"

@implementation ADBLanguageManager

+ (BOOL)isSupportedLanguage:(NSString *)language
{
    if ([language isEqualToString:kLMEnglish]) {
        return YES;
    } else if ([language isEqualToString:kLMItalian]) {
        return YES;
    } else if ([language isEqualToString:kLMSpanish]) {
        return YES;
    } else if ([language isEqualToString:kLMFrench]) {
        return YES;
    } else if ([language isEqualToString:kLMGerman]) {
        return YES;
    }
    
    return NO;
}

+ (NSString *)localizedString:(NSString *)key
{
    NSString *selectedLanguage = [ADBLanguageManager selectedLanguage];
    
    // Get the corresponding bundle path.
	NSString *path = [[NSBundle mainBundle] pathForResource:selectedLanguage ofType:@"lproj"];
    
    // Get the corresponding localized string.
	NSBundle *languageBundle = [NSBundle bundleWithPath:path];
	NSString *str = [languageBundle localizedStringForKey:key value:@"" table:nil];
	return str;
}

+ (void)setSelectedLanguage:(NSString *)language
{
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    
    // Check if desired language is supported.
    if ([self isSupportedLanguage:language]) {
        [userDefaults setObject:language forKey:kLMSelectedLanguageKey];
    } else {
        // if desired language is not supported, set selected language to nil.
        [userDefaults setObject:nil forKey:kLMSelectedLanguageKey];
    }
}

+ (NSString *)selectedLanguage
{
    // Get selected language from user defaults.
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSString *selectedLanguage = [userDefaults stringForKey:kLMSelectedLanguageKey];
    
    // if the language is not defined in user defaults yet...
    if (selectedLanguage == nil) {
        // Get the system language.
        NSArray *userLangs = [userDefaults objectForKey:@"AppleLanguages"];
        NSString *systemLanguage = [userLangs objectAtIndex:0];
        
        // if system language is supported by LanguageManager, set it as selected language.
        if ([self isSupportedLanguage:systemLanguage]) {
            [self setSelectedLanguage:systemLanguage];
            // if not...
        } else {
            // Set the LanguageManager default language as selected language.
            [self setSelectedLanguage:kLMDefaultLanguage];
        }
    }
    
    return [userDefaults stringForKey:kLMSelectedLanguageKey];
}

@end
