import 'package:flutter/material.dart';
import 'package:todoapp/src/widgets/bottom_bar_items.dart';

class BottomAppBarItem {
  BottomAppBarItem({this.iconData, this.text});
  IconData iconData;
  String text;
}

class FabBottomAppBar extends StatefulWidget {
  FabBottomAppBar({
    this.items,
    this.centerItemText,
    this.height: 70.0,
    this.iconSize: 24.0,
    this.backgroundColor,
    this.color,
    this.selectedColor,
    this.notchedShape,
    this.onTabSelected,
  });
  final List<BottomAppBarItem> items;
  final String centerItemText;
  final double height;
  final double iconSize;
  final Color backgroundColor;
  final Color color;
  final Color selectedColor;
  final NotchedShape notchedShape;
  final ValueChanged<int> onTabSelected;

  @override
  State<StatefulWidget> createState() => BottomAppBarState();
}

class BottomAppBarState extends State<FabBottomAppBar> {
  int _selectedIndex = 0;

  _updateIndex(int index) {
    widget.onTabSelected(index);
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> items = List.generate(widget.items.length, (int index) {
      return BottomAppItem(
        item: widget.items[index],
        index: index,
        iconSize: widget.iconSize,
        height: widget.height,
        color: widget.color,
        selectedColor: widget.selectedColor,
        selectedIndex: _selectedIndex,
        onPressed: _updateIndex,
      );
    });
    return BottomAppBar(
      shape: widget.notchedShape,
      notchMargin: 5.0,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: items,
      ),
      color: widget.backgroundColor,
    );
  }
}
