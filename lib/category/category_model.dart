import 'dart:ui';

class CategoryModel {
  final String id;
  final String title;
  final String imageName;
  final Color color;

  CategoryModel(
      {required this.id,
      required this.title,
      required this.imageName,
      required this.color});

  static List<CategoryModel> Categories = [
    CategoryModel(
      id: 'business',
      title: 'Business',
      imageName: 'bussines.png',
      color: Color(0xFFCF7E48),
    ),
    CategoryModel(
      id: 'entertainment',
      title: 'Entertainment',
      imageName: 'environment.png',
      color: Color(0xFF4882CF),
    ),
    CategoryModel(
      id: 'sports',
      title: 'Sports',
      imageName: 'ball.png',
      color: Color(0xFFC91C22),
    ),
    CategoryModel(
      id: 'science',
      title: 'Science',
      imageName: 'science.png',
      color: Color(0xFFF2D352),
    ),
    CategoryModel(
      id: 'business',
      title: 'Business',
      imageName: 'bussines.png',
      color: Color(0xFFC91C22),
    ),
    CategoryModel(
      id: 'business',
      title: 'Business',
      imageName: 'bussines.png',
      color: Color(0xFFC91C22),
    ),
  ];
}
