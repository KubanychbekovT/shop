import 'package:flutter/material.dart';
import 'package:sajda_shop/domain/news/news.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';
import 'package:sajda_shop/presentation/news/widgets/news_page_body.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
              onPressed: ()=>Navigator.pop(context),
              icon: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.black,
              )),
          centerTitle: true,
          title: Text("Новости",style: TextStyle(color: Colors.black),),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: NewsPageBody(news:news)
        ));
  }
}
