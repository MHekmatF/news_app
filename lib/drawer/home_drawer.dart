import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/home_screen.dart';

class HomeDrawer extends StatelessWidget {
  final void Function(DrawerItems) onItemSelected;
  const HomeDrawer({super.key, required this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme.bodyLarge;
    return SizedBox(
      width: screenSize.width * 0.7,
      child: Column(
        children: [
          Container(
              color: AppTheme.primaryColor,
              alignment: Alignment.center,
              child: Text(
                "News App!",
                style: textTheme,
              ),
              width: double.infinity,
              height: screenSize.height * 0.2),
          Expanded(
            child: Container(
              padding: EdgeInsetsDirectional.only(start: 12),
              color: Colors.white,
              child: Column(children: [
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {
                    onItemSelected(DrawerItems.categories);
                    // aaa=DrawerItems.settings;
                  },
                  child: Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Categories",
                        style: textTheme!.copyWith(color: AppTheme.black),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () {
                    onItemSelected(DrawerItems.settings);
                  },
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Settings",
                        style: textTheme.copyWith(color: AppTheme.black),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

enum DrawerItems {
  categories,
  settings;
  // categories('xz'),
  // settings('l');
  // final String name;
  // const DrawerItems(this.name);
}
