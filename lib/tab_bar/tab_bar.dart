import 'package:flutter/material.dart';
import 'package:flutter_ui/tab_bar/widgets/tab_widget.dart';

class TabBarWidget extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tab Bar"),
          bottom: TabBar(
            
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person)),
              Tab(icon: Icon(Icons.card_travel))
            ],
            
          ),
          ),
        body: TabBarView(
          children: [
            Tabwidget(color: Colors.blueGrey, text: "Home"),
            Tabwidget(color: Colors.lightGreen, text: "Person"),
            Tabwidget(color: Colors.lightBlueAccent, text: "Card_travel")
          ],),


    );
  }
}