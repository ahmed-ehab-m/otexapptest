import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/domain/entities/product_entity.dart';
import 'package:otexapptest/features/home/domain/use_cases/fetch_products_use_case.dart';

part 'fetch_products_state.dart';

class FetchProductsCubit extends Cubit<FetchProductsState> {
  FetchProductsCubit(this.fetchClothesUseCase)
    : super(FetchProductsInitialState());
  final FetchProductsUseCase fetchClothesUseCase;

  Future<void> fetchProducts() async {
    emit(FetchProductsLoadingState());
    final failureOrClothes = await fetchClothesUseCase();
    failureOrClothes.fold(
      (failure) => emit(FetchProductsFailureState(message: failure.message)),
      (clothes) => emit(FetchProductsSuccessState(clothes: clothes)),
    );
  }
}
