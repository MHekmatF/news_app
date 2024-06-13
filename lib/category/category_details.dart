import 'package:flutter/material.dart';
import 'package:news_app/api/api_service.dart';
import 'package:news_app/tabs/sources_tabs.dart';
import 'package:news_app/tabs/tab_item.dart';
import 'package:news_app/widgets/error_indicator.dart';
import 'package:news_app/widgets/loading_indicator.dart';

class CategoryDetails extends StatelessWidget {
  const CategoryDetails({super.key, required this.categoryId});

  final String categoryId;

  @override
  Widget build(BuildContext context) {
    // final controller=TabController(length: length, vsync: vsync);
    // controller.
    return FutureBuilder(
      future: ApiService.getSources(categoryId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingIndicator();
        } else if (snapshot.hasError) {

          return const ErrorIndicator();
        } else if (snapshot.data?.status != 'ok') {
          return const  ErrorIndicator();
        }
        final sources = snapshot.data?.sources ?? [];
        return SourcesTabs(sources: sources);
      },
    );
  }
}
