# ThinkWin

ThinkWin is a Flutter application organized as a modular product with distinct user and admin experiences. The repository is structured so that UI, navigation, business logic, shared services, and Firebase integration are separated by responsibility, making it easier for the next developer to understand where features live and how they connect.

## 1. Product overview

- Type: Cross-platform Flutter application
- Target platforms: Android, iOS, Web, Linux, macOS, and Windows
- Primary goal: keep the application scalable by separating user-facing flows, admin flows, and shared infrastructure
- Architectural style: feature-based module structure with shared core services and Firebase-backed data access

## 2. Tech stack

### Application framework

- Flutter SDK with Dart
- Material Design-based UI foundation

### State management and navigation

- GetX for state management and app-level routing patterns
- A modular folder structure to keep feature-specific logic isolated

### Backend and data layer

- Firebase Core for app initialization
- Firebase Authentication for user identity and auth-related workflows
- Cloud Firestore for document-based app data
- Shared Preferences for lightweight local persistence

### UI and experience

- Google Fonts for typography
- Iconsax for icons
- Lottie, shimmer, flutter_animate, and flutter_staggered_animations for motion and polish
- fl_chart and percent_indicator for charts and progress views
- flutter_svg for vector-based assets

### Developer utilities

- intl for date and localization formatting
- uuid for generating unique IDs
- equatable for value-based model comparisons
- flutter_lints for code quality and linting guidance

## 3. Architecture

The project follows a layered architecture that separates presentation, business logic, and infrastructure.

### 3.1 App entry point

- The application bootstraps from [lib/main.dart](lib/main.dart).
- This is the top-level Flutter entry file where the root app widget is created.

### 3.2 Feature modules

- The [lib/user](lib/user) directory contains all user-facing features.
- The [lib/admin](lib/admin) directory contains all admin-focused features.
- Each module is expected to own its own:
  - screens for UI pages
  - controllers for state and business logic
  - routes for navigation
  - widgets for reusable UI component pieces
  - services for backend or domain-specific operations

### 3.3 Shared core layer

- The [lib/core](lib/core) folder is the shared foundation of the app.
- It holds reusable application-wide concerns such as:
  - constants
  - global controllers
  - shared services
  - theme configuration
  - utility helpers and extensions

### 3.4 Models and domain objects

- The [lib/models](lib/models) folder is intended for domain models and reusable data objects.
- These should be used consistently across screens, controllers, and services so data flow remains predictable.

### 3.5 Firebase integration

- Firebase configuration is managed through [lib/firebase_options.dart](lib/firebase_options.dart).
- Authentication, Firestore access, and other backend-facing operations should be handled through services rather than embedded directly inside screens.

## 4. Project structure and responsibility map

```text
lib/
  main.dart                     # Root app entry point
  firebase_options.dart         # Firebase platform configuration

  admin/                        # Admin-side feature module
    controllers/                # Admin state and logic
    routes/                     # Admin navigation setup
    screens/                    # Admin screens/pages
    services/                   # Admin-specific backend logic
    widgets/                    # Reusable admin UI components

  user/                         # User-side feature module
    controllers/                # User state and logic
    providers/                  # Optional provider-based state containers
    routes/                     # User navigation setup
    screens/                    # User screens/pages
    widgets/                    # Reusable user UI components

  core/                         # Shared app infrastructure
    constants/                  # Global constants and enums
    controllers/                # Shared controllers
    services/                   # Common services and helpers
    theme/                      # Theme, colors, typography
    utils/                      # Helpers and extensions

  models/                       # Domain models and entities
```

## 5. How the main files connect

A typical flow in this project should look like this:

1. [lib/main.dart](lib/main.dart) starts the app and creates the root application shell.
2. Navigation routes in the user or admin module direct the app to the appropriate screen.
3. A screen uses a controller or provider to request and manage state.
4. The controller delegates work to a service when data or backend operations are needed.
5. Services interact with Firebase, local storage, or other shared infrastructure.
6. Data is returned to the controller, then rendered in the screen through models and widgets.

This means the intended dependency direction is:

- Screen -> Controller/Provider -> Service -> Firebase/Storage/Shared Preferences
- Models are passed between layers to keep the data contract consistent

## 6. Development conventions for future contributors

- Keep feature-specific code inside [lib/user](lib/user) or [lib/admin](lib/admin).
- Place reusable app-wide logic in [lib/core](lib/core).
- Prefer small, focused widgets over large, multi-purpose UI components.
- Keep controllers lightweight and delegate data work to services.
- Update or create models whenever data moves across boundaries.
- Keep routing, UI, state, and backend concerns separated so the app remains easy to extend.

This README serves as the architectural map for the repository and should help new developers understand where the main responsibilities live and how the core parts of the application are meant to connect.
