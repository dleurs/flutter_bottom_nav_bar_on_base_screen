import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;
  final Widget icon;
  final String title;
  final double minWidth;

  BottomNavBarItem(
      {Key key,
      @required this.icon,
      @required this.title,
      this.isSelected = false,
      this.onTap,
      this.minWidth = 50})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 0),
        child: Container(
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(
                      color: isSelected ? Colors.yellow : Colors.transparent,
                      width: 3.0))),
          padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              icon,
              Text(
                title.toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 9.0),
              )
            ],
          ),
        ),
      ),
    );
  }
}
