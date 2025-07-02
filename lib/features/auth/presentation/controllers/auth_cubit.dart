import 'package:elwekala/features/auth/domain/usecases/login_usecase.dart';
import 'package:elwekala/features/auth/presentation/controllers/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  final AuthUseCase authUseCase;

  AuthCubit(this.authUseCase) : super(AuthInitial());
  void login({required String email, required String password}) async {
    emit(AuthLoading());

    final result = await authUseCase.login(email: email, password: password);

    result.fold(
      (errorMessage) => emit(AuthFailure(message: errorMessage)),
      (user) => emit(AuthSuccess(user: user)),
    );
  }
}
