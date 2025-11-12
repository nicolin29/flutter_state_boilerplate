lib/
└── src/
├── presentation/
│ ├── bloc/ <-- BLoC / Cubit state management
│ │ ├── cubit/
│ │ ├── bloc/
│ │ └── page/
│ │
│ ├── getx/ <-- GetX state management
│ │ ├── controller/
│ │ ├── binding/
│ │ └── page/
│ │
│ ├── provider/ <-- Provider / Riverpod
│ │ ├── notifier/
│ │ └── page/
│ │
│ ├── riverpod/ <-- Riverpod (if separate from Provider)
│ │ ├── provider/
│ │ └── page/
│ │
│ └── widget/ <-- Shared UI widgets
│
├── shared/
│ ├── mixin/
│ └── utils/
│
├── app.dart
└── main.dart

Plan for presentation:
presentation/
├── 01_setstate/
├── 02_provider/
├── 03_bloc/
├── 04_cubit/
├── 05_riverpod/
├── 06_getx/
├── 07_mobx/
├── 08_redux/
└── 09_valuenotifier/

Example:
lib/
├── core/ # shared utilities, constants, themes, etc.
│ ├── error/
│ ├── network/
│ └── utils/
│
├── data/ # reusable data layer
│ ├── models/
│ ├── repositories/
│ └── sources/
│
├── presentation/ # feature UIs grouped by state management
│ ├── bloc/
│ │ ├── article_list/
│ │ │ ├── bloc/
│ │ │ │ ├── article_list_bloc.dart
│ │ │ │ ├── article_list_event.dart
│ │ │ │ └── article_list_state.dart
│ │ │ └── article_list_page.dart
│ │ └── ...
│ │
│ ├── provider/
│ │ ├── article_list/
│ │ │ ├── article_list_provider.dart
│ │ │ └── article_list_page.dart
│ │ └── ...
│ │
│ ├── riverpod/
│ │ ├── article_list/
│ │ │ ├── article_list_notifier.dart
│ │ │ └── article_list_page.dart
│ │ └── ...
│ │
│ ├── getx/
│ │ ├── article_list/
│ │ │ ├── article_list_controller.dart
│ │ │ └── article_list_page.dart
│ │ └── ...
│ │
│ ├── cubit/ # optional if showing Cubit separately
│ │ ├── article_list/
│ │ │ ├── article_list_cubit.dart
│ │ │ └── article_list_page.dart
│ │ └── ...
│ │
│ ├── mobx/ # optional
│ │ ├── article_list/
│ │ │ ├── article_list_store.dart
│ │ │ └── article_list_page.dart
│ │ └── ...
│
├── main.dart
└── di/ # dependency injection setup (if needed)
