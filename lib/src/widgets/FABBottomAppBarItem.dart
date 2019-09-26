import 'package:flutter/material.dart';
import 'package:todoapp/src/widgets/bottomAppItem.dart';

class FABBottomAppBarItem {
  FABBottomAppBarItem({this.iconData, this.text});
  IconData iconData;
  String text;
}

class FABBottomAppBar extends StatefulWidget {
  FABBottomAppBar({
    this.items,
    this.centerItemText,
    this.height: 60.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  });
  final List<FABBottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => FABBottomAppBarState();
}

class FABBottomAppBarState extends State<FABBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("the length of item widget ${widget.items.length}");
    print("the items widgetof is ${widget.items[1]}");
    // List<Widget> items = List.generate(widget.items.length, (int index) {
    //   // return BottomAppItem(
    //   //   item: widget.items[index],
    //   //   index: index,
    //   //   iconSize: widget.iconSize,
    //   //   height: widget.height,
    //   //   color: widget.color,
    //   //   selectedColor: widget.selectedColor,
    //   //   selectedIndex: _selectedIndex,
    //   //   onPressed: _updateIndex(index),
    //   // );
    //   return new Container(
    //     child: Text("Checking"),
    //   );
    // });
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return _buildTabItem(
        item: widget.items[index],
        index: index,
        onPressed: _updateIndex,
      );
    });
  }
}
