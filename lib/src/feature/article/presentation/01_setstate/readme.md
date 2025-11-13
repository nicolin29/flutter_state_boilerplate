# 🧩 SetState + Controller Example

This folder demonstrates the **SetState + Controller** pattern using Flutter’s built-in [`setState()`](https://api.flutter.dev/flutter/widgets/State/setState.html) for UI updates, combined with **Freezed** for immutable and union-based state management.

This pattern provides a clean structure for separating **UI**, **state**, and **business logic**, without relying on external state management libraries.  
It’s lightweight, testable, and ideal for understanding the fundamentals of reactive UI updates in Flutter.

---

## 🧠 Overview

- Uses Flutter’s built-in `setState()` for reactive UI updates.
- Keeps logic in a **Controller** class for better code organization.
- Leverages **Freezed** to create immutable and union-based states (`loading`, `error`, `loaded`, etc.).
- Works seamlessly with **Dependency Injection (DI)** for scalable projects.
- A minimal but structured alternative to complex state management libraries.

---

## 🚀 Key Concepts

| Concept          | Description                                                                 |
| :--------------- | :-------------------------------------------------------------------------- |
| **Controller**   | Holds logic, updates state, and notifies the UI.                            |
| **State**        | Immutable data class (powered by Freezed) representing the current UI data. |
| **setState()**   | Flutter’s built-in method to trigger widget rebuilds with new state.        |
| **DI Container** | (Optional) Injects dependencies like repositories or controllers.           |

---

## 💡 Example Usage

```dart
  class _ArticleDetailPageState extends State<ArticleDetailPage> {
  late final ArticleDetailController _controller;

  ArticleDetailState get state => _controller.state;

  @override
  void initState() {
    _controller = di<ArticleDetailController>();
    _controller.setListener((_) => setState(() {}));
    _controller.onFetchArticleById(widget.articleId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Setstate: Article Detail Page')),
      body: Builder(
        builder: (context) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            error: (error) => Center(child: Text(error)),
            loaded: (data) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    data.title ?? '-',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Image.network(data.image ?? ''),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
```

---

## 📁 Structure

- presentation/01_setstate/
  - controller/
    - article_detail_controller.dart
    - article_list_controller.dart
  - page/
    - article_detail_page.dart
    - article_list_page.dart
  - state/
    - article_detail_state.dart
    - article_list_state.dart
  - setstate.dart

---
