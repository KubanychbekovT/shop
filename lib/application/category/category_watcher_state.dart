part of 'category_watcher_cubit.dart';

@freezed
class CategoryWatcherState with _$CategoryWatcherState {
  const factory CategoryWatcherState.initial() = _Initial;
  const factory CategoryWatcherState.loading() = _Loading;
  const factory CategoryWatcherState.loadCategoriesSuccess(List<Category> categoryList) = _LoadCategoriesSuccess;
  const factory CategoryWatcherState.loadCategoriesFail() = _LoadCategoriesFail;
}
