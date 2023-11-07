import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sajda_shop/application/news/news_watcher_cubit.dart';
import 'package:sajda_shop/presentation/core/widgets/custom_scaffold.dart';
import 'package:sajda_shop/presentation/news/widgets/news_card.dart';

class NewsOverviewPage extends StatelessWidget {
  const NewsOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsWatcherCubit, NewsWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
            loadNewsSuccess: (state) {
              final newsList = state.newsList;
              return CustomScaffold(
                  // appBar: AppBar(
                  //   backgroundColor: Colors.transparent,
                  //   elevation: 0,
                  //   leading: IconButton(
                  //       onPressed: ()=>Navigator.pop(context),
                  //       icon: const Icon(
                  //         Icons.arrow_back_ios_new_outlined,
                  //         color: Colors.black,
                  //       )),
                  //   centerTitle: true,
                  //   title: Text("Новости",style: TextStyle(color: Colors.black),),
                  // ),
                  body: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: ListView.builder(
                        itemCount: newsList.length,
                        itemBuilder: (context, index) {
                          final news = newsList[index];
                          return NewsCard(news: news);
                        }),
                  ));
            },
            loading: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            orElse: () => const SizedBox());
      },
    );
  }
}
