// RUN: %target-swift-frontend(mock-sdk: %clang-importer-sdk) -typecheck -parse-as-library -verify %s

// REQUIRES: objc_interop

import UIKit

@UIApplicationMain // expected-error{{'UIApplicationMain' attribute can only apply to one class in a module}}
// expected-warning@-1 {{'UIApplicationMain' is deprecated; this is an error in Swift 6}}
// expected-note@-2 {{use @main instead}} {{1-19=@main}}
class MyDelegate1: NSObject, UIApplicationDelegate {
}

@UIApplicationMain // expected-error{{'UIApplicationMain' attribute can only apply to one class in a module}}
// expected-warning@-1 {{'UIApplicationMain' is deprecated; this is an error in Swift 6}}
// expected-note@-2 {{use @main instead}} {{1-19=@main}}
class MyDelegate2: NSObject, UIApplicationDelegate {
}

@UIApplicationMain // expected-error{{'UIApplicationMain' attribute can only apply to one class in a module}}
// expected-warning@-1 {{'UIApplicationMain' is deprecated; this is an error in Swift 6}}
// expected-note@-2 {{use @main instead}} {{1-19=@main}}
class MyDelegate3: NSObject, UIApplicationDelegate {
}
