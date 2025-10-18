import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:otexapptest/features/home/domain/entities/product_entity.dart';
import 'package:otexapptest/features/home/presentation/cubits/fetch_products_cubit/fetch_products_cubit.dart';
import 'package:otexapptest/features/home/presentation/views/widgets/grid_view_item.dart';

class ItemsGridView extends StatelessWidget {
  const ItemsGridView({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductEntity> clothesList = [];
    return BlocBuilder<FetchProductsCubit, FetchProductsState>(
      builder: (context, state) {
        if (state is FetchProductsSuccessState) {
          clothesList = state.clothes;
        }
        if (state is FetchProductsLoadingState) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is FetchProductsFailureState) {
          return Center(child: Text(state.message));
        }
        return Expanded(
          child: MasonryGridView.builder(
            gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),

            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            mainAxisSpacing: 12,
            crossAxisSpacing: 12,
            itemBuilder: (context, index) {
              return GridViewItem(clothesEntity: clothesList[index]);
            },
            itemCount: clothesList.length,
          ),
        );
      },
    );
  }
}
