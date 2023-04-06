import 'package:book/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:book/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:book/core/widgets/custom_error_widget.dart';
import 'package:book/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerSliverListView extends StatelessWidget {
  const BestSellerSliverListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: BestSellerListViewItem(bookModel: state.books[index]),
                );
              },

              childCount: state.books.length,
              // 1000 list items
            ),
          );
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else {
          return const SliverFillRemaining(
            child: Center(child: CustomLoadingIndicator()),
          );
        }
      },
    );
  }
}
