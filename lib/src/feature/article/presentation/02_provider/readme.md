# 🪴 Provider Example

This folder demonstrates the **Provider** state management pattern using the [`provider`](https://pub.dev/packages/provider) package.

**Provider** is one of the simplest and most widely used state management solutions in Flutter.  
It allows your UI to **reactively rebuild** when state changes, without manually calling `setState()` or attaching listeners.

It is ideal for **small to medium applications** or as a **foundation** for more advanced solutions like Riverpod, MobX, or BLoC.

---

## 🧠 Overview

- Uses **`ChangeNotifier`** for reactive state updates.
- Removes the need for manual `setListener()` or `setState()` calls.
- Simplifies data flow between UI and business logic.
- Works seamlessly with **dependency injection** and **feature-based architecture**.

---

## 🚀 Key Concepts

| Concept                        | Description                                                                |
| :----------------------------- | :------------------------------------------------------------------------- |
| **Provider**                   | Exposes data to the widget tree, enabling automatic rebuilds when changed. |
| **ChangeNotifier**             | Notifies listeners whenever internal state updates.                        |
| **Consumer / context.watch()** | Rebuilds only the widgets that depend on specific data.                    |

---

## 💡 Example Usage

Here’s a simple example from the **Article Detail Page**:

```dart
class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = context.watch<ArticleListProvider>();
    final state = provider.state;

    return Scaffold(
      appBar: AppBar(title: const Text('Provider: Article List')),
      body: Builder(
        builder: (context) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state.error != null) {
            return Center(child: Text('Error: ${state.error}'));
          } else {
            return ListView.builder(
              itemCount: state.articles.length,
              itemBuilder: (context, index) {
                final article = state.articles[index];
                return ListTile(
                  title: Text(article.title),
                  leading: Image.network(article.image),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: provider.fetchArticles,
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
```

---

## 📁 Structure

- presentation/02_provider/
  - provider/
    - article_detail_provider.dart
    - article_list_provider.dart
  - page/
    - article_detail_page.dart
    - article_list_page.dart
  - state/
    - article_detail_state.dart
    - article_list_state.dart
  - provider.dart

---
