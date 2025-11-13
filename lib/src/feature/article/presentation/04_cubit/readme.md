# 🧱 BLoC Example

This folder demonstrates the **Cubit** pattern using the [`flutter_bloc`](https://pub.dev/packages/flutter_bloc) package.

**Cubit** is a simplified state management solution in Flutter. Unlike BLoC, it doesn’t require separate events—state changes are triggered directly by calling methods on the Cubit. This makes it **easier to understand**, **less boilerplate**, and **ideal for managing simple to moderately complex state** in your Flutter applications.

It helps keep your **UI reactive**, **logic testable**, and **code organized**, while still benefiting from the same robust ecosystem as BLoC.

---

## 🧠 Overview

- Uses **States** to manage reactive UI updates.
- Promotes **separation of concerns** between UI and business logic.
- Scales well for **simple and testable** state management without events.
- Ideal for **smaller features or screens** where full BLoC events are unnecessary.

---

## 🚀 Key Concepts

| Concept   | Description                                        |
| :-------- | :------------------------------------------------- |
| **Cubit** | Holds state and exposes methods to update it.      |
| **State** | Represents the UI’s condition at any given moment. |

---

## 💡 Example Usage

```dart
context.read<ArticleListCubit>().fetchArticles();
```

or

```dart
context.read<ArticleDetailCubit>().fetchArticleById(widget.articleId);
```

---

## 📁 Structure

- presentation/04_cubit/
  - bloc/
    - article_detail/
      - article_detail_cubit.dart
      - article_detail_state.dart
    - article_list/
      - article_list_cubit.dart
      - article_list_state.dart
  - page/
    - article_detail_page.dart
    - article_list_page.dart

---
