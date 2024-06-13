import 'package:flutter/material.dart';
import 'package:news_app/news/news_list.dart';
import 'package:news_app/tabs/tab_item.dart';

import '../models/sources_response/source.dart';

class SourcesTabs extends StatefulWidget {
  final List<Source> sources;

  SourcesTabs({
    super.key,
    required this.sources,
  });

  @override
  State<SourcesTabs> createState() => _SourcesTabsState();
}

class _SourcesTabsState extends State<SourcesTabs> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length: widget.sources.length,
          child: TabBar(
            isScrollable: true,
            indicatorColor: Colors.transparent,
            dividerColor: Colors.transparent,
            onTap: (index) => setState(() {
              selectedIndex = index;
            }),
            tabs: widget.sources
                .map((source) => TabItem(
                      source: source,
                      isSelected:
                          widget.sources.indexOf(source) == selectedIndex,
                    ))
                .toList(),
          ),
        ),
        Expanded(child: NewsList(sourceId: widget.sources?[selectedIndex].id ?? '')),
      ],
    );
  }
}
