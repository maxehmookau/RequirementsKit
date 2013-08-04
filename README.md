RequirementsKit
===============

Objective-C Bindings for Gatherrequirements.com


## Usage

1. Install from cocoapods (not yet...)

2. Initialize the shared instance in `AppDelegate.m`:

```objective-c
#import "RequirementsKit.h"
...
RequirementsKit *kit = [RequirementsKit sharedInstance];
[kit setApiKey:YOUR_API_KEY];
```

3. That's it.
