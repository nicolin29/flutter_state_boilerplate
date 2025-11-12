import 'package:flutter/material.dart';

class ArticleListPage extends StatefulWidget {
  static const String routeName = '/article-list';
  static const String routePath = '/article-list';

  const ArticleListPage({super.key});

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Article List Page')));
  }
}
