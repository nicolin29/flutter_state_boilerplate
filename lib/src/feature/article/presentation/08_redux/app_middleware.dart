import 'package:flutter_state_boilerplate/src/core/di/injector.dart';
import 'package:flutter_state_boilerplate/src/feature/article/presentation/08_redux/redux.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createMiddlewares() {
  // just return your feature middleware list
  return [...di<ArticleListMiddleware>().middlewares];
}
