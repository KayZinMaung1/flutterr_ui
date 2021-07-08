import 'package:flutter/material.dart';


class ArticleDetails extends StatelessWidget {
  var article;

  ArticleDetails(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Article Details")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text(article.title),
        SizedBox(
          height: 10
        ),
        Text(article.body)

      ],)
    
    );
  }
}