import 'package:flutter/material.dart';
import 'package:todoapp/src/widgets/bottom_bar_service.dart';

class BottomAppItem extends StatelessWidget {
  BottomAppItem(
      {this.item,
      this.index,
      this.iconSize,
      this.height,
      this.color,
      this.selectedColor,
      this.selectedIndex,
      @required this.onPressed})
      : super();

  final BottomAppBarItem item;
  final int index;
  final ValueChanged<int> onPressed;
  final double height;
  final double iconSize;
  final Color color;
  final Color selectedColor;
  final int selectedIndex;

  void _handleTap() {
    onPressed(index);
  }

  @override
  Widget build(BuildContext context) {
    Color defColor = selectedIndex == index ? selectedColor : color;
    return Expanded(
      child: SizedBox(
        height: height,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {
              _handleTap();
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(item.iconData, color: defColor, size: iconSize),
                Padding(
                  padding: EdgeInsets.only(bottom: 5.0),
                ),
                Text(
                  item.text,
                  style: TextStyle(color: defColor),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
