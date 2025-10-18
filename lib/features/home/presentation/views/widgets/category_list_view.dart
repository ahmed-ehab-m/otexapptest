import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show CircularProgressIndicator;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:otexapptest/core/widgets/loading_widget.dart';
import 'package:otexapptest/features/home/domain/entities/category_entity.dart';
import 'package:otexapptest/features/home/presentation/cubits/fetch_categories_cubit/fetch_categories_cubit_cubit.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/category_list_view_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchCategoriesCubit, FetchCategoriesState>(
      builder: (context, state) {
        List<CategoryEntity> categories = [];
        if (state is FetchCategoriesLoadingState) {
          return const LoadingWidget();
        }
        if (state is FetchCategoriesFailureState) {
          return ErrorWidget(state.message);
        }
        if (state is FetchCategoriesSuccessState) {
          categories = state.categories;
        }
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.11,
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemBuilder: (context, index) {
                return CategoryListViewItem(categoryEntity: categories[index]);
              },
            ),
          ),
        );
      },
    );
  }
}
