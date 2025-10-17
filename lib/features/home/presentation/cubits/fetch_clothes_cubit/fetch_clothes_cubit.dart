import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otexapptest/core/errors/failure.dart';
import 'package:otexapptest/features/home/domain/entities/clothes_entity.dart';
import 'package:otexapptest/features/home/domain/use_cases/fetch_clothes_use_case.dart';

part 'fetch_clothes_state.dart';

class FetchClothesCubit extends Cubit<FetchClothesState> {
  FetchClothesCubit(this.fetchClothesUseCase) : super(FetchClothesInitial());
  final FetchClothesUseCase fetchClothesUseCase;

  Future<void> fetchClothes() async {
    emit(FetchClothesLoading());
    final failureOrClothes = await fetchClothesUseCase();
    failureOrClothes.fold(
      (failure) => emit(FetchClothesFailure(message: failure.message)),
      (clothes) => emit(FetchClothesSuccess(clothes: clothes)),
    );
  }
}
