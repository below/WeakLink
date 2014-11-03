WeakLink
========

These projects demonstrate my question if `UIUserNotifications` can be weak linked directly, or if I have to use `NSClassFromString`, as I currently do as a workaround

In the [Documentation](https://developer.apple.com/library/ios/documentation/DeveloperTools/Conceptual/cross_development/Using/using.html "NextPrevious
Using SDK-Based Development") Apple says that:

> For iOS frameworks that support the `NS_CLASS_AVAILABLE` macro, conditionalize your code for weakly linked classes as demonstrated in the following example:

> `if ([UIPrintInteractionController class]) {
>     // Create an instance of the class and use it.
> } else {
>     // Alternate code path to follow when the
>     // class is not available.
> }`

Conditions for this are:

> * The base SDK for your Xcode project must be iOS 4.2 or newer.
> * The deployment target for your project must be iOS 3.1 or newer.
> * The compiler for your project must be the LLVM-GCC 4.2 compiler or newer, or the LLVM compiler (Clang) 1.5 or newer.
> * You must ensure that any frameworks not available in your project’s deployment target are weakly linked, rather than required.

However, for `UIUserNotificationSettings` I will get: `Undefined symbols for architecture armv7: "_OBJC_CLASS_$_UIUserNotificationSettings"` if linked for iOS 7.

Is this a bug?