import 'package:flutter/material.dart';
import 'package:flutter_ui/bottom_navigation/widgets/navigation_widget.dart';

class BottomNavigationWidget extends StatefulWidget {
  
  _BottomNavigationWidgetState createState() => _BottomNavigationWidgetState();
}

class _BottomNavigationWidgetState extends State<BottomNavigationWidget> {
  var _selectedIndex = 0;

  List<Widget> navigation_widgets = [
    NavigationWidget(color: Colors.blueGrey, text: "Person"),
    NavigationWidget(color: Colors.cyan,text: "Home"),
    NavigationWidget(color: Colors.greenAccent,text: "Cart",)
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation")
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person) ,
            label: "person"
            ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel),
            label: "card"
          )
        ],
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
          //print(_selectedIndex);
        },
      ),
      body: navigation_widgets[_selectedIndex],

    );
  }
}