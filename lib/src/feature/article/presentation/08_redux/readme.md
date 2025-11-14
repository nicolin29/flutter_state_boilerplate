# 🔴 Redux Example

This folder demonstrates the **Redux** state management pattern using the [`redux`](https://pub.dev/packages/redux) package.

**Redux** provides a **single source of truth** for application state and enforces **predictable state changes** via actions and reducers.  
It is ideal for **medium to large applications** that benefit from structured state management, undo/redo capabilities, and centralized state.

---

## 🧠 Overview

- Uses a **Store** to hold global state (`AppState`).
- **Actions** describe state changes.
- **Reducers** update state in response to actions.
- **Middleware** handles asynchronous logic like API calls.
- UI subscribes to state changes using `StoreConnector` from [`flutter_redux`](https://pub.dev/packages/flutter_redux).

---

## 🚀 Key Concepts

| Concept        | Description                                                                     |
| -------------- | ------------------------------------------------------------------------------- |
| **Store**      | Holds the entire app state and dispatches actions.                              |
| **State**      | Immutable object describing a part of the app (e.g., `ArticleListState`).       |
| **Action**     | Object describing an intention to change state (e.g., `FetchArticlesAction`).   |
| **Reducer**    | Pure function that updates state in response to an action.                      |
| **Middleware** | Intercepts actions for async work (e.g., API calls) before they reach reducers. |
| **Dispatcher** | Sends actions to the store to trigger state updates.                            |

---

## 💡 Example Usage (Article List Page)

```dart
class ArticleListPage extends StatelessWidget {
  const ArticleListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ArticleListState>(
      converter: (store) => store.state.articleListState,
      onInit: (store) => store.dispatch(FetchArticlesAction()),
      builder: (context, state) {
        if (state.isLoading) return const Center(child: CircularProgressIndicator());

        if (state.articles.isEmpty) return const Center(child: Text('No articles found.'));

        return ListView.builder(
          itemCount: state.articles.length,
          itemBuilder: (context, index) {
            final article = state.articles[index];
            return ListTile(
              title: Text(article.title),
              subtitle: Text(article.content),
              onTap: () => Navigator.pushNamed(
                context,
                '/article_detail',
                arguments: article.id,
              ),
            );
          },
        );
      },
    );
  }
}
```

---

## 📦 Store Example (Middleware + Reducer)

### ArticleListMiddleware

```dart
final store = Store<AppState>(
  appReducer,
  initialState: AppState.initial(),
  middleware: [
    ...ArticleListMiddleware(articleRepository).middlewares,
    ...ArticleDetailMiddleware(articleRepository).middlewares,
  ],
);
```

### ArticleListReducer

```dart
AppState appReducer(AppState state, dynamic action) {
  return state.copyWith(
    articleListState: ArticleListReducer.reducer(state.articleListState, action),
    articleDetailState: ArticleDetailReducer.reducer(state.articleDetailState, action),
  );
}
```

### Reducer Responsibilities

Reducers handle:

- Fetching data (FetchArticlesAction)
- Load more (LoadMoreArticlesAction)
- Refresh (RefreshArticlesAction)
- Success / failure actions update state accordingly

---

## 🔧 Running the App

### Initialize the store in `main.dart`:

```dart
final store = Store<AppState>(
  appReducer,
  initialState: AppState.initial(),
  middleware: [
    ...ArticleListMiddleware(articleRepository).middlewares,
    ...ArticleDetailMiddleware(articleRepository).middlewares,
  ],
);

runApp(MyApp(store: store));
```

### Provide the store:

```dart
class MyApp extends StatelessWidget {
  final Store<AppState> store;

  const MyApp({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'Redux Example',
        routes: {
          '/article_list': (context) => const ArticleListPage(),
          '/article_detail': (context) => const ArticleDetailPage(),
        },
      ),
    );
  }
}
```

---

## 📁 Structure

- presentation/08_redux/
  - action/
    - article_detail_action.dart
    - article_list_action.dart
  - middleware/
    - article_detail_middleware.dart
    - article_list_middleware.dart
  - page/
    - article_detail_page.dart
    - article_list_page.dart
  - reducer/
    - article_detail_reducer.dart
    - article_list_reducer.dart
  - state/
    - article_detail_state.dart
    - article_list_state.dart
  - app_middleware.dart
  - app_reducer.dart
  - app_state.dart
  - redux.dart

---
