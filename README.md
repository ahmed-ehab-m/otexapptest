# Otex App
## Table of contents
- ### [Main Tools and Technologies Used =>](#main-tools-and-technologies-used)
- ### [main packages used =>](#main-packages-used)
- ### [Folder structure =>](#folder-structure)
- ### [Screenshots =>](#screenshots)


## Main Tools and Technologies Used
### Framework & Language
#### Flutter: Google's UI toolkit for building beautiful, natively compiled applications for mobile, web, and desktop from a single codebase. We use Flutter to create a smooth and responsive user interface.
#### Dart: The programming language behind Flutter. Dart is fast, optimized for UI, and provides features like null safety and strong typing for building reliable apps.

### Architecture 
#### Clean Architecture: A software design pattern that separates the code into layers (Presentation, Domain, Data). This makes the app easier to test, maintain, and scale. Each layer has its own responsibility and doesn't depend heavily on other layers.
Domain: contains business logic and entities.

Data: handles repositories, models, and local data sources.

Presentation: contains UI and Cubit classes for state management.

### State Management 
#### Cubit: A simplified version of BLoC pattern used to manage the app's state. Cubit helps us control how data flows in the app and updates the UI when the data changes. It makes the code more organized and predictable.


### StateManagement :  Cubit (from flutter_bloc)
Used for handling app state in a simple yet structured way. Each feature has its own Cubit managing its UI logic and data flow.

### Backend/Database
#### SQLite (sqflite): A local database that stores data directly on the device. We use SQLite to cache weather data, enable offline mode, and provide fast access to stored information without needing an internet connection.

## Main packages used

-[dartz] (https://pub.dev/packages/dartz) for functional programming tools like Either and Option

-[flutter_bloc] (https://pub.dev/packages/flutter_bloc) for implementing Bloc state management pattern

-[get_it] (https://pub.dev/packages/get_it) for dependency injection using a service locator

-[go_router] (https://pub.dev/packages/go_router) for managing routing and deep linking in Flutter

-[flutter_staggered_grid_view] (https://pub.dev/packages/flutter_staggered_grid_view) for creating staggered grid layouts

-[flutter_svg] (https://pub.dev/packages/flutter_svg) for rendering SVG images in Flutter

-[flutter_screenutil] (https://pub.dev/packages/flutter_screenutil) for making an app be more reponsive

-[sqflite] (https://pub.dev/packages/flutter_screenutil) for Local Database

  

## Folder structure
We have applied clean archeticture ,MVVM (Feature Based)  concept and here is the basic folder structure:

ai_weather
```
├── android
├── assets
├── build
├── ios
├── lib
├── screen_shots
└── test
```
Here is the folder structure we have been using in this project:

📂 lib Folder
```
├── lib
│   ├── core
│   ├── features
│   └── main.dart
```
### core
This folder contains all services and tools related to the application
```
├── core
│   ├── local_data_source
│   │     ├──local_data_base.dart
│   ├── errors
│   │     ├──failure.dart
│   ├── helper_functions
│   │     ├──get_responsive_width.dart
│   │     ├──setup_service_locator.dart
│   ├── utils
│   │     ├──app_colors.dart
│   │     ├──app_router.dart
│   │     ├──app_text_styles.dart
│   │     ├──assets.dart
│   │     ├──constants.dart
│   │     ├──static_data.dart
│   ├── widgets
│   │     ├──custom_button.dart
│   │     ├──error_widget.dart
│   │     ├──loading_widget.dart
│   │     ├──left_diagonal_clipper.dart



              
```
### features
This folder containes everything related to the screen of the application and the business logic of the application specificly state management.
```
presentation
├── home
├── plans_selected
├── filtering
```

## Screenshots
Here are some screeshots for the application:
![Uploading home.png…]()
<img width="1440" height="3040" alt="plans1" src="https://github.com/user-attachments/assets/efda0e12-2c4d-45d2-9868-848ff6c10880" /># otexapptest
<img width="1440" height="3040" alt="plans2" src="https://github.com/user-attachments/assets/853beb7d-9583-4065-9b9e-a05b2ebbbc97" />


