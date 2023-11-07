import 'package:flutter/material.dart';
import 'package:sajda_shop/domain/news/news.dart';
import 'package:sajda_shop/presentation/core/utils/date_formatter.dart';
import 'package:sajda_shop/repository/core/constants.dart';

class NewsPageBody extends StatelessWidget {
  const NewsPageBody({super.key, required this.news,  this.controller});
  final News news;
  final ScrollController? controller;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(controller: controller,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 40,),
          Text(
            news.name,
            style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w600),
          ),
          Text(
            DateFormatter.formatDurationFromDateTime(news.createdAt),
            style: const TextStyle(
                color: Colors.grey),
          ),
          const SizedBox(height: 20,),
          Center(
            child: Image.network(
              "${Constants.serverBaseUrl}/${news.img}",
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 20,),
          Text(
            news.desc,
            style: const TextStyle(
                color: Colors.black),
          ),
          const SizedBox(height: 40,)

        ],
      ),
    );
  }
}
