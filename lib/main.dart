import 'package:flutter/material.dart';
import 'package:flutter_ui/local_json_parsing/user_list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Local Json Parsing",
      home: UserListWidget(),
    );
  }
}