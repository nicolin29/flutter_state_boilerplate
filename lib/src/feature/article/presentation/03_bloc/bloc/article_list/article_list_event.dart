import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list_event.freezed.dart';

@freezed
class ArticleListEvent with _$ArticleListEvent {
  const factory ArticleListEvent.initialFetch() = _ArticlesListInitialFetch;
  const factory ArticleListEvent.loadMore() = _ArticleListLoadMore;
  const factory ArticleListEvent.refresh() = _ArticleListRefresh;
}
