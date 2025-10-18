part of 'get_plans_cubit.dart';

@immutable
sealed class GetPlansState {}

final class GetPlansInitialState extends GetPlansState {}

final class GetPlansLoadingState extends GetPlansState {}

final class GetPlansSuccessState extends GetPlansState {
  final List<PlanEntity> plansList;
  GetPlansSuccessState({required this.plansList});
}

final class GetPlansErrorState extends GetPlansState {
  final String message;
  GetPlansErrorState({required this.message});
}
