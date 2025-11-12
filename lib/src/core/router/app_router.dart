import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_boilerplate/src/core/di/injector.dart';
import 'package:flutter_state_boilerplate/src/feature/article/presentation/01_bloc/bloc/article_list/article_list_bloc.dart';
import 'package:flutter_state_boilerplate/src/feature/article/presentation/01_bloc/page/article_list_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static GoRouter router = GoRouter(
    initialLocation: ArticleListPage.routePath,
    routes: [
      GoRoute(
        name: ArticleListPage.routeName,
        path: ArticleListPage.routePath,
        builder: (context, state) => BlocProvider(
          create: (_) => di<ArticleListBloc>(),
          child: ArticleListPage(),
        ),
      ),
    ],
  );
}
