import 'package:flutter/widgets.dart';
import 'package:flutter_state_boilerplate/src/feature/article/data/repository/article_repository.dart';
import 'package:flutter_state_boilerplate/src/feature/article/presentation/02_provider/provider.dart';

class ArticleDetailProvider extends ChangeNotifier {
  ArticleDetailState _state = const ArticleDetailState.initial();
  final ArticleRepository _articleRepository;

  ArticleDetailState get state => _state;

  ArticleDetailProvider(this._articleRepository);

  Future<void> onFetchArticleById(id) async {
    _state = const ArticleDetailState.loading();
    notifyListeners();
    try {
      final article = await _articleRepository.getArticlesById(id);
      _state = ArticleDetailState.loaded(article);
    } catch (e) {
      _state = ArticleDetailState.error(e.toString());
    } finally {
      notifyListeners();
    }
  }
}
