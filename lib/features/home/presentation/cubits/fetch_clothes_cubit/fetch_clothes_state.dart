part of 'fetch_clothes_cubit.dart';

@immutable
sealed class FetchClothesState {}

final class FetchClothesInitial extends FetchClothesState {}

final class FetchClothesLoading extends FetchClothesState {}

final class FetchClothesSuccess extends FetchClothesState {
  final List<ClothesEntity> clothes;
  FetchClothesSuccess({required this.clothes});
}

final class FetchClothesFailure extends FetchClothesState {
  final String message;
  FetchClothesFailure({required this.message});
}
