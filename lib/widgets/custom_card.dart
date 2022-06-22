import 'package:flutter/material.dart';
import 'package:medical_services/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  final String listTitleTile;
  final String listSubTitleTile;
  final IconData icon;
  final String leftTextButton;
  final String rightTextButton;

  const CustomCard(
      {Key? key,
      required this.listTitleTile,
      required this.listSubTitleTile,
      required this.leftTextButton,
      required this.rightTextButton,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        ListTile(
          leading: Icon(icon, color: AppTheme.primary),
          title: Text(listTitleTile),
          subtitle: Text(listSubTitleTile),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: Text(leftTextButton)),
                TextButton(onPressed: () {}, child: Text(rightTextButton)),
              ],
            ))
      ]),
    );
  }
}
