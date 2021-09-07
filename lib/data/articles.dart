class Article {
  String title;
  String imageUrl;
  int numArticles;
  String contents;
  String date;
  String sources;

  Article(
      {required this.title,
      required this.sources,
      required this.imageUrl,
      required this.contents,
      required this.numArticles,
      required this.date});
}
