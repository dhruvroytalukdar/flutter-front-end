import 'package:flutter/material.dart';
import 'package:newsapp/data/articles.dart';

class ArticleDescScreen extends StatelessWidget {
  final Article article;
  const ArticleDescScreen({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Container(
          margin: EdgeInsets.only(left: 77.0),
          child: Text(
            "- Aa +",
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          Icon(Icons.inventory_2_outlined),
          SizedBox(width: 15.0),
          Icon(Icons.star_border),
          SizedBox(width: 16.0),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 18.0,
                vertical: 7.0,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 17.0,
                      horizontal: 1.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: Text(
                                '_____',
                                style: TextStyle(color: Colors.blueGrey[300]),
                              ),
                            ),
                            SizedBox(width: 5.0),
                            Text(
                              article.date,
                              style: TextStyle(
                                color: Colors.blueGrey[300],
                                fontSize: 15.0,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 2.0),
                          width: 67.0,
                          height: 30.0,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: Colors.lightBlue[50],
                          ),
                          child: Text(
                            'BEST OF',
                            style: TextStyle(
                              fontSize: 13.0,
                              color: Colors.blue[500],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Flexible(
                        child: Text(
                          article.title,
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 32.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Image(
                      height: 230,
                      width: 322,
                      image: AssetImage(article.imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 2.0),
                        width: 62.0,
                        height: 30.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.lightBlue[50],
                        ),
                        child: Text(
                          'Art',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.blue[500],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        margin: EdgeInsets.only(top: 2.0),
                        width: 95.0,
                        height: 30.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.lightBlue[50],
                        ),
                        child: Text(
                          'Architecture',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.blue[500],
                          ),
                        ),
                      ),
                      SizedBox(width: 10.0),
                      Container(
                        margin: EdgeInsets.only(top: 2.0),
                        width: 80.0,
                        height: 30.0,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: Colors.black87),
                        ),
                        child: Text(
                          '+ Add Tag',
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.blueGrey[400],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      article.contents,
                      style: TextStyle(
                        wordSpacing: 1.2,
                        fontSize: 19.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
