# HealthboxOPD — Doctor & Service Provider App (Flutter)

Doctors aur saare service providers (Nursing, Physio, Attendant & Baby Care, Dietitian, Psychologist) ke liye **poora Flutter source project**.

Customer / patient app is ZIP me **nahi** hai. Ready APK bhi shamil nahi hai — neeche diye commands se APK banegi.

## Is project me kya hai

- `lib/` — app source (login, appointments, availability, earnings, profile & KYC)
- `android/` — Android project (Gradle wrapper, manifest, launcher icons). Isi se APK banti hai.
- `ios/` — iOS project (Xcode Runner, Podfile, icons). IPA ke liye Mac + Xcode chahiye.
- `pubspec.yaml`, `test/`

Application id: `com.healthboxopd.healthboxopd_provider`  
App name: HealthboxOPD

Ye platform folders Flutter **3.47.9 stable** (revision `c197ca5199e9ee5661e865596c9c07294dfab51c`) ke official template se bane hain: Android Gradle Plugin 9.1.0, Kotlin 2.4.0, Gradle 9.3.1.

## APK kaise banayein

1. [Flutter stable](https://docs.flutter.dev/install) install karein (3.47 ya usse naya) aur Android SDK. Java 17 chahiye.
2. ZIP extract karein, phir project folder me:

```bash
flutter doctor
flutter pub get
flutter build apk --release
```

APK yahan milegi:

```text
build/app/outputs/flutter-apk/app-release.apk
```

Release APK abhi debug keystore se sign hoti hai, taaki phone par install ho sake. Play Store ke liye apna release keystore `android/app/build.gradle.kts` me lagayein.

Agar Gradle / AGP version ka error aaye, Flutter purana hai. Update karein:

```bash
flutter upgrade
flutter doctor
```

Phone par seedha chalane ke liye:

```bash
flutter run
```

## Backend URL

`lib/config.dart` me `kPocketBaseUrl` production par yeh hai:

```text
https://www.healthboxopd.com/hcgi/platform
```

Preview / local backend ke liye apna URL yahin badlein.

## App kya karti hai

- Email ya mobile + password se login (website wale accounts).
- Doctor: appointments, accept/cancel, video-consultation status, availability, fee, earnings, profile & KYC.
- Nursing / Physio / Attendant / Dietitian / Psychologist: assignments, availability, services, bank details, earnings, profile & KYC.
- Sirf ye roles: `doctor`, `nursing`, `physio`, `attendant`, `dietitian`, `psychologist`.

## iOS

Mac par Xcode ke saath:

```bash
flutter build ipa
```

Pehli baar `flutter pub get` `ios/Flutter/Generated.xcconfig` banata hai. Uske bina `pod install` mat chalayein.
