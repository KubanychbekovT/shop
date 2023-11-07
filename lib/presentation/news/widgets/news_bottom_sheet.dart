import 'package:flutter/material.dart';
import 'package:sajda_shop/domain/news/news.dart';
import 'package:sajda_shop/presentation/core/utils/date_formatter.dart';
import 'package:sajda_shop/presentation/news/widgets/news_page_body.dart';
import 'package:sajda_shop/repository/core/constants.dart';

class NewsBottomSheet extends StatelessWidget {
  const NewsBottomSheet({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: DraggableScrollableSheet(
        initialChildSize: 1,
        minChildSize: 0.7,
        maxChildSize: 1,
        builder: (context,controller) {
          return Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: const BoxDecoration(            color: Colors.white,
                borderRadius:  BorderRadius.vertical(
              top: Radius.circular(16),
            )),
            child: NewsPageBody(news: news,controller: controller,)
          );
        }
      ),
    );
  }
}
