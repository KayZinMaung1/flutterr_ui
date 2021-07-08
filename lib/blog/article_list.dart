import 'package:flutter/material.dart';
import 'package:flutter_ui/blog/article_details.dart';
import 'package:flutter_ui/model/Article.dart';

class BlogWidget extends StatelessWidget {
  
  List<Article> articles = [
    Article("Lorem Ipsum", "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
    Article("It is a long established fact", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
    Article("Contrary to popular belief", "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words"),
    Article("It is a long established fact", "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English."),
    Article("Contrary to popular belief", "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Articles"),
      ),
      body: ListView.builder(
        itemCount: articles.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(articles[index].title),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context){
                    return ArticleDetails(articles[index]);
                  }
                  )
              );
            }
          );
        },
      )

    );
  }
}