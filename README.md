# SmartWatch Companion App

A Flutter-based smartwatch companion app for health monitoring that integrates with a Bluetooth SDK to fetch real-time health data.

## Features

- Firebase Authentication (Email/Password and Google Sign-In)
- Real-time health data monitoring (heart rate and steps)
- Bluetooth connection management
- Clean architecture with Provider state management
- Offline data storage with SQLite

## Getting Started

### Prerequisites

- Flutter SDK
- Firebase project setup
- Android Studio / VS Code with Flutter extensions

### Installation

1. Clone the repository
```bash
git clone https://github.com/yourusername/health_companion.git
```

2. Install dependencies
```bash
flutter pub get
```

3. Run the app
```bash
flutter run
```

## Project Structure

```
lib/
├── main.dart
├── models/
│   └── health_data.dart
├── providers/
│   └── auth_provider.dart
├── screens/
│   ├── dashboard_screen.dart
│   ├── login_screen.dart
│   └── splash_screen.dart
├── services/
│   └── bluetooth_service.dart
└── widgets/
    └── health_data_card.dart
```

## Architecture

The app follows a clean architecture pattern with the following layers:
- Presentation (screens and widgets)
- Business Logic (providers)
- Data (services and models)

## Testing

Run tests using:
```bash
flutter test
```

## License

This project is licensed under the MIT License.
