import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sajda_shop/domain/app_settings/app_settings.dart';
import 'package:sajda_shop/domain/user/user.dart';
import 'package:sajda_shop/presentation/core/utils/error_dialog.dart';
import 'package:sajda_shop/repository/profile/profile_repository.dart';

part 'profile_manager_cubit.freezed.dart';

part 'profile_manager_state.dart';

class ProfileManagerCubit extends Cubit<ProfileManagerState> {
  ProfileManagerCubit() : super(ProfileManagerState.initial());
  final profileRepository = ProfileRepository();
  String get currency =>state.appSettings?.appMode.currency??"KGS";
  int get points =>state.user?.points??0;

  Future<void> loadProfile() async {
    try {
      emit(state.copyWith(loading: true));
      final user = await profileRepository.getProfile();
      emit(state.copyWith(user: user, loading: false));
     } catch (_) {
      emit(state.copyWith(loading: false));
    }
    try {
      emit(state.copyWith(loading: true));
      final appSettings = await profileRepository.getAppSettings();
      emit(state.copyWith(appSettings: appSettings, loading: false));
    } catch (_) {
      emit(state.copyWith(loading: false));
    }

  }

  Future<void> updateProfile(User user) async {
    final isSuccessfulUpdate = await profileRepository.updateProfile(user);
    if (isSuccessfulUpdate) {
      AppDialog.showInfo("Профиль был успешно обновлен");
      emit(state.copyWith(user: user));
    } else {
      AppDialog.showError("Произошла ошибка во время обновления профиля");
    }
  }

  void logOut() {
    emit(state.copyWith(user: null));
  }
}
