import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otexapptest/features/plans_selected/domain/entities/plan_entity.dart';
import 'package:otexapptest/features/plans_selected/domain/use_cases/get_plans_use_case.dart';

part 'get_plans_state.dart';

class GetPlansCubit extends Cubit<GetPlansState> {
  GetPlansCubit(this.getPlansUseCase) : super(GetPlansInitialState());
  final GetPlansUseCase getPlansUseCase;

  Future<void> getPlans() async {
    emit(GetPlansLoadingState());
    final failureOrPlans = await getPlansUseCase.call();
    failureOrPlans.fold(
      (failure) => emit(GetPlansErrorState(message: failure.message)),
      (plans) => emit(GetPlansSuccessState(plansList: plans)),
    );
  }
}
