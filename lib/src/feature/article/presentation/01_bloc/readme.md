# 🧱 BLoC Example

This folder demonstrates the **BLoC (Business Logic Component)** pattern using the `flutter_bloc` package.

---

## 🧠 Overview

- Uses **Events** and **States** to manage UI updates.
- Great for **scalable**, **testable**, and **predictable** architectures.
- Ideal when you need **clear separation** between UI and business logic.

---

## 💡 Example Usage

```dart
context.read<ArticleListBloc>().add(const ArticleListEvent.fetch());
```

---

## 🚀 Key Concepts

- Event: describes what should happen (e.g., fetch, refresh, loadMore).
- State: represents the UI’s condition at any moment.
- Bloc: reacts to events, performs logic, and emits new states.
