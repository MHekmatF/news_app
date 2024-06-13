import 'package:flutter/material.dart';
import 'package:news_app/api/api_service.dart';
import 'package:news_app/news/news_item.dart';

import '../widgets/error_indicator.dart';
import '../widgets/loading_indicator.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key, required this.sourceId});

  final String sourceId;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ApiService.getNews(sourceId),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingIndicator();
        } else if (snapshot.hasError || snapshot.data?.status != 'ok') {
          return const ErrorIndicator();
        }
        final newsList = snapshot.data?.news ?? [];
        return ListView.builder(
            itemBuilder: (context, index) => NewsItem(news: newsList[index]),
            itemCount: newsList.length);
      },
    );
  }
}
