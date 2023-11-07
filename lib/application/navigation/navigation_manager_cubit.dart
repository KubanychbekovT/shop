import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_manager_state.dart';
part 'navigation_manager_cubit.freezed.dart';

class NavigationManagerCubit extends Cubit<NavigationManagerState> {
  NavigationManagerCubit() : super( NavigationManagerState.initial());
  void setBottomNavigationSelectedIndex(int newIndex){
    emit(state.copyWith(bottomNavigationSelectedIndex:newIndex));
  }
}
