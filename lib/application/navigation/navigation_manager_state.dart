part of 'navigation_manager_cubit.dart';

@freezed
class NavigationManagerState with _$NavigationManagerState {
   factory NavigationManagerState.initial() => const NavigationManagerState(0);
  const factory NavigationManagerState(int bottomNavigationSelectedIndex) = _NavigationManagerState;
}
