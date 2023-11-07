import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sajda_shop/domain/news/news.dart';
import 'package:sajda_shop/repository/news/news_repository.dart';

part 'news_watcher_state.dart';
part 'news_watcher_cubit.freezed.dart';

class NewsWatcherCubit extends Cubit<NewsWatcherState> {
  NewsWatcherCubit() : super(const NewsWatcherState.initial());
  final newsRepository = NewsRepository();

  Future<void> loadNews() async {
    emit(const NewsWatcherState.loading());
    try {
      final newsList = await newsRepository.getNewsList();
      emit(NewsWatcherState.loadNewsSuccess(newsList));
    } catch (e) {
      emit(const NewsWatcherState.loadNewsFail());
    }
  }
}