import 'package:flutter/material.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final Color bgColor;
  final String title;
  final Color titleColor;
  const IconTextWidget(
      {Key? key,
      required this.icon,
      required this.bgColor,
      required this.title,
      required this.titleColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CircleAvatar(
        child: Icon(
          icon,
          color: Colors.white,
        ),
        maxRadius: 25,
        backgroundColor: bgColor,
      ),
      Text(
        title,
        style: TextStyle(color: titleColor, fontSize: 10),
      ),
    ]);
  }
}
