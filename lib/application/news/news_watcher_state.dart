part of 'news_watcher_cubit.dart';

@freezed
class NewsWatcherState with _$NewsWatcherState {
  const factory NewsWatcherState.initial() = _Initial;
  const factory NewsWatcherState.loading() = _Loading;
  const factory NewsWatcherState.loadNewsSuccess(List<News> newsList) = _LoadNewsSuccess;
  const factory NewsWatcherState.loadNewsFail() = _LoadNewsFail;
}
