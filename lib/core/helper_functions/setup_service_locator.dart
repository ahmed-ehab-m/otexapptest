import 'package:get_it/get_it.dart';
import 'package:otexapptest/features/home/data/data_sources/home_local_data_source.dart';
import 'package:otexapptest/features/home/data/repos/home_repo_impl.dart';
import 'package:otexapptest/features/home/domain/repos/home_repo.dart';
import 'package:otexapptest/features/home/domain/use_cases/fetch_categories_use_case.dart';
import 'package:otexapptest/features/home/domain/use_cases/fetch_products_use_case.dart';
import 'package:otexapptest/features/home/presentation/cubits/fetch_categories_cubit/fetch_categories_cubit_cubit.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerLazySingleton<HomeLocalDataSource>(
    () => HomeLocalDataSourceImpl(),
  );
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepoImpl(homeLocalDataSource: getIt()),
  );
  getIt.registerLazySingleton<FetchProductsUseCase>(
    () => FetchProductsUseCase(homeRepo: getIt()),
  );
  getIt.registerLazySingleton<FetchCategoriesUseCase>(
    () => FetchCategoriesUseCase(homeRepo: getIt()),
  );
}
