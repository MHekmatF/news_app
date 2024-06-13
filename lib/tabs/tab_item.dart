import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/models/sources_response/source.dart';

class TabItem extends StatelessWidget {
  final Source source;
  final bool isSelected;

  const TabItem({super.key, required this.source, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    return Container(
      margin: EdgeInsets.all(6),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: isSelected ? primaryColor : Colors.transparent,
      ),
      child: Text(
        source.name ?? 'jjjj',
        style: TextStyle(
          color: isSelected ? Colors.white : primaryColor,
        ),
      ),
    );
  }
}
