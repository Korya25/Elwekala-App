import 'package:elwekala/features/profile/domain/use_case/profile_use_case.dart';
import 'package:elwekala/features/profile/presentation/controller/profile_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this.useCase) : super(ProfileIntialState());
  final ProfileUseCase useCase;
  void getProfile({required String token}) async {
    emit(ProfileGetLoadinglState());
    final result = await useCase.getProfile(token: token);
    result.fold((errorMessage) => emit(ProfileGetErrorState(errorMessage)), (
      user,
    ) {
      emit(ProfileGetSucessState(user));
    });
  }
}
