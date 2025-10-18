part of 'fetch_categories_cubit_cubit.dart';

sealed class FetchCategoriesState {}

final class FetchCategoriesInitial extends FetchCategoriesState {}

final class FetchCategoriesLoadingState extends FetchCategoriesState {}

final class FetchCategoriesFailureState extends FetchCategoriesState {
  final String message;
  FetchCategoriesFailureState({required this.message});
}

final class FetchCategoriesSuccessState extends FetchCategoriesState {
  final List<CategoryEntity> categories;
  FetchCategoriesSuccessState({required this.categories});
}
