import 'package:flutter/material.dart';

class BuildBottomAppBar extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BuildBottomAppBar> {
  @override
  Widget build(BuildContext context) => BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.all(20.0),
                icon: Icon(Icons.home),
                tooltip: "Home",
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.all(20.0),
                icon: Icon(Icons.favorite),
                tooltip: "Favorite",
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.all(20.0),
                icon: Icon(Icons.center_focus_strong),
                tooltip: "Active",
                onPressed: () {
                  setState(() {});
                },
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.all(20.0),
                icon: Icon(Icons.playlist_add_check),
                tooltip: "Completed",
                onPressed: () {
                  setState(() {});
                },
              )
            ],
          ),
        ),
      );
}
