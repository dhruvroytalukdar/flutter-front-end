import 'package:flutter/material.dart';
import 'package:newsapp/data/articles.dart';

class ArticleDescScreen extends StatelessWidget {
  final Article article;
  const ArticleDescScreen({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(article.title),
      ),
    );
  }
}
