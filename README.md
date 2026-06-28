# ThinkWin

ThinkWin is a Flutter-based multi-platform application structured as a modular product with separate user-facing and admin-facing experiences. The codebase is organized around feature modules, shared core services, and Firebase-backed data access so new developers can quickly understand how the app is composed.

## Overview

- Product type: Flutter application with a modular feature-based architecture
- Target platforms: Android, iOS, Web, Linux, macOS, and Windows
- Primary design goal: keep business logic, UI, routing, and shared infrastructure clearly separated

## Tech Stack

### Frontend and app framework

- Flutter SDK with Dart
- Material Design UI foundation

### State and app architecture

- GetX for state management and app-level navigation patterns
- Feature-oriented module structure for scalable development

### Backend and data

- Firebase Core for platform initialization
- Firebase Authentication for user sign-in and identity flows
- Cloud Firestore for document-based data storage
- Shared preferences for lightweight local persistence

### UI and experience enhancements

- Google Fonts for typography
- Iconsax for iconography
- Lottie, shimmer, flutter_animate, and flutter_staggered_animations for polished UI motion
- fl_chart and percent_indicator for analytics and progress visuals
- flutter_svg for scalable vector assets

### Utilities and developer support

- intl for localization and date formatting
- uuid for unique identifier generation
- equatable for value-based model comparisons
- flutter_lints for code-quality enforcement

## Architecture

ThinkWin follows a layered, feature-first architecture:

1. App shell
   - The entry point is lib/main.dart, where the Flutter app is launched and the root widget is defined.

2. Feature modules
   - The user and admin folders are the main feature areas of the application.
   - Each feature area contains its own controllers, screens, routes, widgets, and services so feature-specific logic stays isolated.

3. Shared core layer
   - The core folder holds app-wide constants, global controllers, shared services, theme definitions, and utility helpers.
   - Anything used across multiple modules should live here rather than being duplicated inside feature folders.

4. Domain models
   - The models folder is intended for the data objects and value types used by the app.
   - Models help keep business data consistent across screens, services, and controllers.

5. Firebase integration
   - Firebase configuration is managed through lib/firebase_options.dart.
   - Backend-facing logic should be routed through services so the UI layer does not directly manage storage or authentication concerns.

## Project Structure

```text
lib/
  main.dart
  firebase_options.dart

  admin/
    controllers/      # Admin-side state and business logic
    routes/           # Admin navigation definitions
    screens/          # Admin UI pages
    services/         # Admin-specific backend or API services
    widgets/          # Reusable admin UI components

  user/
    controllers/      # User-side state and business logic
    providers/        # Optional provider-based state containers
    routes/           # User navigation definitions
    screens/          # User-facing pages
    widgets/          # Reusable user interface components

  core/
    constants/        # Shared constants, enums, and static values
    controllers/      # Global controllers and shared state
    services/         # Shared services such as storage or networking helpers
    theme/            # App theme, colors, text styles, and spacing
    utils/            # General-purpose helpers and extensions

  models/             # Data models and domain objects
```

## How the pieces connect

- Screens are responsible for presentation and user interaction.
- Controllers or providers manage the state needed by those screens.
- Services handle backend communication, local persistence, and reusable business operations.
- Routes define navigation between screens.
- Shared resources in core are used by both the user and admin experiences.

## Development guidance for the next developer

- Keep feature-specific code inside the user or admin folders.
- Place reusable cross-cutting logic in core.
- Prefer small, focused widgets over large UI components.
- Keep controllers lightweight and delegate data work to services.
- Add or update models whenever data moves between layers.

This README is intended as an architectural guide for understanding how the project is organized and how the major responsibilities are distributed across the repository.
