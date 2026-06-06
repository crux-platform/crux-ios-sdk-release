# CRUX Survey SDK — iOS

Official distribution of the **CRUX in-app survey SDK** for iOS, shipped as a
precompiled binary (XCFramework) via Swift Package Manager.

The SDK shows short in-app surveys to customers and submits their answers to the
CRUX platform. It renders the survey and captures the response — your app only
decides *when* to ask.

- **Distribution:** public Swift package, binary target — **no credentials required**.
- **Requirements:** iOS 18.0+ · Swift 6.0+ · Xcode 16+.

> This repository contains only the package manifest and release binaries.
> The complete integration guide (online/offline triggers, customer attributes,
> event matrix, theming, PII rules) is provided separately by CRUX.

---

## Install

In Xcode:

1. **File → Add Package Dependencies…**
2. Enter the package URL:
   ```
   https://github.com/crux-platform/crux-ios-sdk-release
   ```
3. Dependency rule: **Up to Next Major Version**, starting from `1.0.0`.
4. Add the **CruxSDK** library product to your app target.

Or add it directly in a `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/crux-platform/crux-ios-sdk-release.git", from: "1.0.0")
]
```

---

## Quick start

### 1. Configure once, at app start

`apiKey` and `endpoint` are supplied by CRUX per environment.

```swift
import CruxSDK

CRUXSdk.configure(
    CRUXConfiguration(
        apiKey: "<SDK_API_KEY>",
        endpoint: "https://<crux-endpoint>",
        environment: .production            // or .staging
    )
)
```

### 2. Set the customer on login (clear on logout)

Pass a **non-PII party pseudonym** and stable session attributes. These are
applied automatically to every survey — do not repeat them per call.

```swift
CRUXSdk.setCustomer("PARTY-9F2A7C", attributes: [
    "gender": "male", "age": "34", "nationality": "SA", "language": "ar"
])

// on logout:
CRUXSdk.clearCustomer()
```

> Never pass real PII (name, national ID, full account number, phone, DOB).

### 3. Online — trigger after an in-app action

```swift
CRUXSdk.trigger(event: "local_transfer_completed", attributes: [
    "transaction_ref": "TXN-99231"
])
```

The SDK decides whether the customer is eligible and shows the survey if so.
If not eligible, nothing happens — there is no error to handle.

### 4. Offline — launch when a notification is tapped

```swift
CRUXSdk.launchSurvey(event: "complaint_closed", attributes: [
    "survey_instance_id": "INV-7a3f9c",     // unique per notification
    "complaint_number": "CMP-12345"
])
```

The SDK handles the cases the user might see (survey expired, offline, send
failure) with a clear bilingual message — your app does not need to handle these.

---

## Language and theme (optional)

```swift
CRUXSdk.setLanguage("ar")        // "ar" or "en" (RTL supported)

CRUXSdk.updateTheme(CRUXTheme(
    primary:         "#6165FF",
    accent:          "#6165FF",
    background:      "#FFFFFF",
    surface:         "#F5F6FA",
    textPrimary:     "#15161C",
    textSecondary:   "#6B7280",
    border:          "#E2E4F0",
    inputBackground: "#F3F4F6"
))
```

---

## Versioning & updates

This package follows [Semantic Versioning](https://semver.org).

- **Patch / minor** (e.g. `1.0.1`, `1.1.0`) — pick up automatically via
  Xcode → *File → Packages → Update to Latest Package Versions*. No code changes.
- **Major** (e.g. `2.0.0`) — may contain breaking changes; bump your dependency
  rule and follow the migration notes in the release.

See [Releases](https://github.com/crux-platform/crux-ios-sdk-release/releases)
for the changelog and checksums.

---

## Support

For credentials, endpoints, the full integration guide, or any integration
question, contact your CRUX representative.
