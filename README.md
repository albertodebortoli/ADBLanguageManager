# ADBLanguageManager

ADBLanguageManager is a reusable localization manager class for iOS. It is useful to change in-app localization without having to change iOS language.
It has been originally written by [Toni Sala] (http://indiedevstories.com/2011/11/08/a-reusable-localization-manager-class-for-ios/).
An additional macro has been added to the class to be used is a more Cocoa style fashion. 

Try out the included demo project.

Simple usage:

- import `ADBLanguageManager.h` in your class
- use as follow

``` objective-c
NSString *localizedString = [ADBLanguageManager localizedString:@"Hello"];
```
or, much better
``` objective-c
NSString *localizedString = ADBLocalizedString(@"Hello");
```

To set a language for the application.
``` objective-c
[ADBLanguageManager setSelectedLanguage:@"it"];
```

# License

Licensed under the New BSD License.

Copyright (c) 2012, Toni Sala, Alberto De Bortoli
All rights reserved.

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
    * Redistributions of source code must retain the above copyright
      notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.
    * Neither the name of Toni Sala, Alberto De Bortoli nor the
      names of its contributors may be used to endorse or promote products
      derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL Toni Sala, Alberto De Bortoli BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

## Resources

Info can be found on [my website](http://www.albertodebortoli.it), [and on Twitter](http://twitter.com/albertodebo).
