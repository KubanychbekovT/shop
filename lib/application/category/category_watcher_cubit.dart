import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sajda_shop/domain/product/product.dart';
import 'package:sajda_shop/repository/category/category_repository.dart';

part 'category_watcher_state.dart';
part 'category_watcher_cubit.freezed.dart';

class CategoryWatcherCubit extends Cubit<CategoryWatcherState> {
  CategoryWatcherCubit() : super( const CategoryWatcherState.initial());
  final newsRepository = CategoryRepository();

  Future<void> loadNews() async {
    emit(const CategoryWatcherState.loading());
    try {
      final newsList = await newsRepository.getCategoryList();
      emit(CategoryWatcherState.loadCategoriesSuccess(newsList));
    } catch (e) {
      rethrow;
      emit(const CategoryWatcherState.loadCategoriesFail());
    }
  }
}
