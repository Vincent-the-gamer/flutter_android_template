# flutter_android_template

Flutter template project for building Android app only.

![demo](.github/demo.png)

> [!TIP]
> You can run flutter create <xxx> to generate a new project if the template is outdated,
>
> then follow the [Features](#features) part to configure your project.

## Features

- Add China mirror source of maven repos in `build.gradle.kts`.
- Add China mirror source of maven repos in `android/settings.gradle.kts`.
- Use local gradle in `android/gradle/gradle-wrapper.properties`, download it yourself.
  ```properties
    # Notice the Gradle version
    distributionUrl=file\://<any-path>/gradle-8.10.2-all.zip
  ```
- Give permissions by default in `android/app/src/main/AndroidManifest.xml`:
  ```xml
    <!-- 访问电话状态 -->
    <uses-permission android:name="android.permission.READ_PHONE_STATE" />
    <!-- 允许全部网络访问 -->
    <uses-permission android:name="android.permission.INTERNET" />
    <!-- 获取网络信息状态 -->
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <!-- 获取当前WiFi接入的状态以及WLAN热点的信息 -->
    <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />
  ```

## Usage

> [!IMPORTANT]
> Replace `flutter_android_template` to your project name globally to use this template.

- Install dependencies by `flutter pub get`, upgrade deps by `flutter pub upgrade`
- Run project: `flutter run`
- Generate **keystore**(either `.keystore` or `.jks` is ok.) before build your apk:
  
  > [!TIP]
  > A default `release.jks` has generated in `android` folder for debug.

  ```shell
  # Example
  keytool -genkeypair \
          -alias Android \
          -keyalg RSA \
          -keypass 123456 \
          -validity 2000 \
          -keystore ./android/release.jks \
          -storepass 123456
  ```
  Then change configuration in `android/app/build.gradle.kts`, ensure the values are as same as your keystore generation. 
  ```kotlin
  signingConfigs {
    create("packJKS") {
      keyAlias = "Android" // 别名
      keyPassword = "123456"// 密码
      storeFile = file("${rootDir.absolutePath}/release.jks")
      storePassword = "123456"// 存储密码
    }
  }
  ```

## Build
```shell
flutter build apk
```