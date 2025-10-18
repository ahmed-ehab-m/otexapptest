part of 'fetch_products_cubit.dart';

sealed class FetchProductsState {}

final class FetchProductsInitialState extends FetchProductsState {}

final class FetchProductsLoadingState extends FetchProductsState {}

final class FetchProductsSuccessState extends FetchProductsState {
  final List<ProductEntity> clothes;
  FetchProductsSuccessState({required this.clothes});
}

final class FetchProductsFailureState extends FetchProductsState {
  final String message;
  FetchProductsFailureState({required this.message});
}
