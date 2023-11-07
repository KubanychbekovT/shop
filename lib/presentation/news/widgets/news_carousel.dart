import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/news/news_watcher_cubit.dart';
import 'package:sajda_shop/presentation/news/widgets/news_bottom_sheet.dart';
import 'package:sajda_shop/repository/core/constants.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
class NewsCarousel extends StatefulWidget {
  const NewsCarousel({super.key});

  @override
  State<NewsCarousel> createState() => _NewsCarouselState();
}

class _NewsCarouselState extends State<NewsCarousel> {
  int currentNewsIndex=0;
  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 210,
      child: BlocBuilder<NewsWatcherCubit, NewsWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
              loadNewsSuccess: (state) {
                final newsList = state.newsList;
               return Column(
                 children: [
                   CarouselSlider(
                        options: CarouselOptions(
                          viewportFraction: 1,
                          // viewportFraction: (screenWidth - 40) /
                          //     (screenWidth),
                          height: 180,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                            onPageChanged: (index, _) {
                              setState(() {
                                currentNewsIndex = index;
                              });
                            }
                        ),
                        items:(newsList.map((news) => Container(
                          height: 180,
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              "${Constants.serverBaseUrl}/${news.img}",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))).toList(),
                    ),
                   const SizedBox(height: 10,),
                   CarouselIndicator(
                     space: 8,
                     width: 10,
                     height: 4,
                     cornerRadius: 10,
                     color: const Color(0xff939393),
                     activeColor: Colors.black,
                     count: newsList.length,
                     index: currentNewsIndex,
                   ),
                 ],
               );
              },
              loading: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              orElse: () => const SizedBox()
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Детальная страница"), // Замените на нужное название
      ),
      body: Center(
        child: Text(
            "Содержимое детальной страницы"), // Замените на нужное содержимое
      ),
    );
  }
}
