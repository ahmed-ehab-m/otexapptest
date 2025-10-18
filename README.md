
## Table of contents

- ### [main packages used =>](#main-packages-used)
- ### [Folder structure =>](#folder-structure)
- ### [Screenshots =>](#screenshots)


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
│   ├── data
│   ├── errors
│   ├── helper_functions
│   ├── utils
│   ├── widgets              
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


