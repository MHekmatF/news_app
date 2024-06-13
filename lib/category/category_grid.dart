import 'package:flutter/material.dart';
import 'package:news_app/category/category_item.dart';
import 'package:news_app/category/category_model.dart';

class CategoryGrid extends StatelessWidget {
  final void Function(CategoryModel) onCategorySelected;
  const CategoryGrid({super.key, required this.onCategorySelected});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Text(
              "Pick your category of interest",
              style: textTheme.bodySmall,
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: CategoryModel.Categories.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 24, crossAxisSpacing: 24),
              itemBuilder: (context, index) {
                return InkWell(
                    onTap: () {
                      onCategorySelected(CategoryModel.Categories[index]);
                    },
                    child: CategoryItem(
                      category: CategoryModel.Categories[index],
                      index: index,
                    ));
              },
            ),
          )
        ],
      ),
    );
  }
}
