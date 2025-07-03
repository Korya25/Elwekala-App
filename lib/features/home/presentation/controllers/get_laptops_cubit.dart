import 'package:elwekala/features/home/domain/usecase/get_product_use_case.dart';
import 'package:elwekala/features/home/presentation/controllers/get_laptops_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GetLaptopsCubit extends Cubit<GetLaptopsState> {
  GetLaptopsCubit(this.useCase) : super(GetLaptopsIntial());
  final GetProductUseCase useCase;

  void getLaptops() async{
    emit(GetLaptopsLoading());

   final resualt = await  useCase.getLaptops();
    resualt.fold(
      (errorMessage) => emit(GetLaptopsFailure(errorMessage: errorMessage)),
     (products) => emit(GetLaptopsSuccess(products: products)));
  }
}
