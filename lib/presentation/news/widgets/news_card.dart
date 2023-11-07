import 'package:flutter/material.dart';
import 'package:sajda_shop/domain/news/news.dart';
import 'package:sajda_shop/presentation/core/utils/date_formatter.dart';
import 'package:sajda_shop/presentation/news/widgets/news_page.dart';
import 'package:sajda_shop/repository/core/constants.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news});
  final News news;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return NewsPage(news: news);
        }));
      },
      child : Column(
        children: [
          const SizedBox(height: 8,),
          SizedBox(height: 64,
            child: Row(children: [
              SizedBox(width: 80,height:48,child: Image.network("${Constants.serverBaseUrl}/${news.img}",fit: BoxFit.fill,),),
              const SizedBox(width: 16,),
              Expanded(
                child: Column(crossAxisAlignment:CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.spaceAround,children: [
                  Text(
                    news.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.watch_later_outlined,size: 16,),
                      const SizedBox(width: 8,),
                      Text(
                        DateFormatter.formatDurationFromDateTime(news.createdAt),
                        style: const TextStyle(
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ],),
              )
            ],),
          ),
          const SizedBox(height: 20,),
          const Divider(thickness: 1,)
        ],
      ),
    );
  }
}
