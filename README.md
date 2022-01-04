# dotup_flutter_wear

A plugin that offers Flutter support for Wear OS by Google (Android Wear).

Based on https://github.com/fluttercommunity/flutter_wear_plugin


Take al look at:
> [dotup.de](https://dotup.de)

> [flutter-apps](https://flutter-apps.ml)

# Widgets

There currently three widgets provided by the plugin:

* WatchShape: determines whether the watch is square or round.
* AmbientMode: builder that provides what mode the watch is in. The widget will rebuild whenever the watch changes mode.


## install
`flutter pub add dotup_flutter_wear`

## setup
Change `kotlin_version` in `android/build.gradle`

```diff
-     ext.kotlin_version = '1.3.50'
+     ext.kotlin_version = '1.5.10'
```

Make the following changes in `android/app/build.gradle`

```diff
 android {
-    compileSdkVersion 30
+    compileSdkVersion 31
 
     defaultConfig {
-        minSdkVersion 16
-        targetSdkVersion 30
+        minSdkVersion 23
+        targetSdkVersion 31
     }
 
 dependencies {
     implementation "org.jetbrains.kotlin:kotlin-stdlib-jdk7:$kotlin_version"
+    implementation 'androidx.wear:wear:1.2.0'
+    implementation 'com.google.android.support:wearable:2.8.1'
+    compileOnly 'com.google.android.wearable:wearable:2.8.1'    
 }
```

## Links

> dotup_flutter_wear on [github](https://github.com/dotupNET/dotup_flutter_wear)

> dotup_flutter_wear on [pub.dev](https://pub.dev/packages/dotup_flutter_wear)

> dotup_flutter_widgets on [pub.dev](https://pub.dev/packages/dotup_flutter_widgets)

> Other widgets on [pub.dev](https://pub.dev/packages?q=dotup)

> Other open source flutter projects on [Github](https://github.com/search?q=dotup_flutter)
