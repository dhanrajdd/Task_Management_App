# Task Management App

A Flutter-based Task Management App that allows users to add, edit, delete, and view tasks. The app implements the MVVM architecture with state management using Riverpod and supports data persistence via SQLite. Additional features include light/dark theme support and a responsive design for mobile and tablet devices.

---

## Features

### Task Management:
- Add, edit, delete, and view tasks.
- Mark tasks as "Completed" or "Pending."

### Data Persistence:
- Uses SQLite to store task details.
- Data persists across app launches.

### User Preferences:
- Support for light and dark themes.

### State Management:
- Powered by Riverpod for efficient state handling.

### Responsive Design:
- Adapts to both mobile and tablet screen sizes.

---

## Packages Used

| Package          | Purpose                       |
|------------------|-------------------------------|
| flutter_riverpod | State management              |
| sqflite          | SQLite database integration   |
| path             | File path management for SQLite |
| intl             | For date and time formatting  |

---

## Folder Structure

The project follows the MVVM architecture. Below is the folder structure:

```
lib/
|
|-- models/          # Data models
|-- viewmodels/      # Business logic and state (Riverpod)
|-- repositories/    # Data persistence (SQLite operations)
|-- ui/              # User interface (screens and widgets)
|-- main.dart        # Entry point of the app
```

---

## Getting Started

### Prerequisites

#### Flutter SDK
- Install Flutter SDK. Follow the official guide: [Install Flutter](https://flutter.dev/docs/get-started/install)

#### Android Studio
- Install an IDE like Android Studio with Flutter and Dart plugins.

#### Java Development Kit (JDK)
- Ensure you have JDK 17 installed for compatibility with Android SDK 34.

#### Android SDK
- Ensure you have Android SDK 34 installed.

### Installation

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/dhanrajdd/Task_Management_App.git
   cd task_management_app
   ```

2. **Install Dependencies:**
   ```bash
   flutter pub get
   ```

3. **Set Up Environment:**
   Verify Flutter setup:
   ```bash
   flutter doctor
   ```
   Ensure Android emulator / iOS Simulator or a physical device is connected.

4. **Run the App:**
   ```bash
   flutter run
   ```

---


## Troubleshooting

### Common Issues

1. **Build Fails Due to Java Version:**
   - Ensure you are using JDK 17.

2. **Dependency Conflicts:**
   - Run `flutter pub outdated` to check for outdated packages and update them.

3. **Database Errors:**
   - Ensure the SQLite database file (`tasks.db`) is properly initialized.

---

