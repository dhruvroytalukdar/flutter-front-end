import 'package:flutter/material.dart';
import 'package:newsapp/data/articles.dart';
import 'package:newsapp/data/popular_list.dart';

class PopularListWidget extends StatelessWidget {
  const PopularListWidget({Key? key}) : super(key: key);

  Widget _eachArticleContainer(int index) {
    final Article article = popularList[index];
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      width: 150,
      child: Column(
        children: [
          Container(
            child: Image(
              height: 150,
              width: 150,
              image: AssetImage(article.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${article.numArticles.toString()} articles",
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blueGrey[300],
                    ),
                  ),
                  SizedBox(
                    height: 5.0,
                  ),
                  Text(
                    article.title,
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ],
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
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25.0),
          child: Row(
            children: [
              Text(
                'Popular lists',
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
        SizedBox(height: 20.0),
        Container(
          height: 250.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: popularList.length,
              itemBuilder: (BuildContext context, int index) {
                return _eachArticleContainer(index);
                // return Text(popularList[index].title);
              }),
        )
      ],
    );
  }
}
