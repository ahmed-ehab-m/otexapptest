import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:otexapptest/features/home/domain/entities/category_entity.dart';
import 'package:otexapptest/features/home/domain/use_cases/fetch_categories_use_case.dart';

part 'fetch_categories_cubit_state.dart';

class FetchCategoriesCubit extends Cubit<FetchCategoriesState> {
  FetchCategoriesCubit(this.fetchCategoriesUseCase)
    : super(FetchCategoriesInitial());
  final FetchCategoriesUseCase fetchCategoriesUseCase;

  Future<void> fetchCategories() async {
    emit(FetchCategoriesLoadingState());
    final failureOrCategories = await fetchCategoriesUseCase();
    failureOrCategories.fold(
      (failure) => emit(FetchCategoriesFailureState(message: failure.message)),
      (categories) => emit(FetchCategoriesSuccessState(categories: categories)),
    );
  }
}
