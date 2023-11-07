import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sajda_shop/domain/auth/auth_social_media_data.dart';
import 'package:sajda_shop/repository/auth/auth_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState.initial());
  final authRepository=AuthRepository();
  Future<void> signIn(String phone,String password)async{
    emit(const AuthState.loading());
    try{
      await authRepository.signIn(phone, password);
      emit(const AuthState.success());
    }
    catch(e){
      emit(const AuthState.fail("Неправильный пароль или номер телефона"));
    }
  }
  Future<void> signUp(String name,String email,String phone,String password)async{
    emit(const AuthState.loading());
    try{
      await authRepository.signUp(name:name,phone:phone,email:email,password: password);
      emit(const AuthState.success());
    }
    catch(e){
      emit(const AuthState.fail("Произошла ошибка во время регистрации."));
    }
  }
  Future<void> authenticateWithSocialMedia(AuthSocialMediaData authSocialMediaData,bool isSignIn)async{
    emit(const AuthState.loading());
    try{
      await authRepository.authenticateWithSocialMedia(authSocialMediaData,isSignIn);
      emit(const AuthState.success());
    }
    catch(e){
      if(isSignIn){
        emit( const AuthState.fail("Произошла ошибка во время входа"));
      }else{
        emit( const AuthState.fail("Пользователь уже авторизован или произошла ошибка. Попробуйте войти в аккаунт"));
      }
    }
  }
  Future<void> logOut()async{
      await authRepository.logOut();
      emit( const AuthState.initial());
  }
}
