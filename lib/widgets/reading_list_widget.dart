import 'package:flutter/material.dart';
import 'package:newsapp/data/articles.dart';
import 'package:newsapp/data/reading_list.dart';
import 'package:newsapp/screens/article_description_screen.dart';

class ReadingListWidget extends StatelessWidget {
  const ReadingListWidget({Key? key}) : super(key: key);

  Widget _eachArticle(Article article) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
      child: Row(
        children: [
          Container(
            child: Image(
              height: 140,
              width: 140,
              image: AssetImage(article.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 140.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "medium.com",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.blueGrey[300],
                          ),
                        ),
                        SizedBox(width: 9.0),
                        Container(
                          margin: EdgeInsets.only(top: 2.0),
                          width: 60.0,
                          height: 22.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.lightBlue[50],
                          ),
                          child: Text(
                            "${article.numArticles} pages",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.blue[500],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      article.title,
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10.0,
            bottom: 15.0,
          ),
          child: Row(
            children: [
              Text(
                "Reading lists",
                style: TextStyle(
                    fontSize: 21.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2),
              ),
              SizedBox(
                width: 13.5,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 9.0),
                child: Text(
                  '_____',
                  style: TextStyle(color: Colors.blueGrey[300]),
                ),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (Article article in readingList)
              GestureDetector(
                onTap: () => Future(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) {
                          return ArticleDescScreen(article: article);
                        },
                      ),
                    );
                  },
                ),
                child: Container(
                  child: _eachArticle(article),
                ),
              ),
          ],
        ),
      ],
    );
  }
}
