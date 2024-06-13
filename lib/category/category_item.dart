import 'package:flutter/material.dart';
import 'package:news_app/category/category_model.dart';

class CategoryItem extends StatelessWidget {
  final int index;
  final CategoryModel category;

  const CategoryItem({super.key, required this.category, required this.index});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Container(
      decoration: BoxDecoration(
        color: category.color,
        borderRadius: BorderRadius.only(
          topRight: const Radius.circular(20),
          topLeft: const Radius.circular(20),
          bottomLeft: Radius.circular(index.isEven ? 20 : 0),
          bottomRight: Radius.circular(index.isOdd ? 20 : 0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "images/${category.imageName}",
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          Text(
            category.title,
            style: textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
