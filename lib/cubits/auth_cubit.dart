import 'package:airplane/cubits/auth_state.dart';
import 'package:airplane/models/user_model.dart';
import 'package:airplane/services/auth_service.dart';
import 'package:airplane/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void signIn({
    required String email,
    required String password,
  }) async {
    try {
      emit(AuthLoading());
      UserModel user = await AuthService().signIn(
        email: email,
        password: password,
      );
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed('$e'));
    }
  }

  void signUp({
    required String email,
    required String password,
    required String name,
    String hobby = '',
  }) async {
    try {
      emit(AuthLoading());

      UserModel user = await AuthService().signUp(
        email: email,
        password: password,
        name: name,
        hobby: hobby,
      );

      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed('$e'));
    }
  }

  void signOut() async {
    try {
      emit(AuthLoading());
      await AuthService().signOut();
      emit(AuthInitial());
    } catch (e) {
      emit(AuthFailed('$e'));
    }
  }

  void getCurrentUser(String id) async {
    try {
      UserModel user = await UserService().getUserById(id);
      emit(AuthSuccess(user));
    } catch (e) {
      emit(AuthFailed('$e'));
    }
  }
}
