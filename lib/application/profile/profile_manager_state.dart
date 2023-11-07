part of 'profile_manager_cubit.dart';

@freezed
class ProfileManagerState with _$ProfileManagerState {
   factory ProfileManagerState({User? user,AppSettings? appSettings,required bool loading})= _ProfileManagerState;
   factory ProfileManagerState.initial() => ProfileManagerState(user: null,appSettings:null,loading: false);
}
