import 'package:book/Features/home/presentation/manger/newest_books_cubit/newest_books_cubit.dart';
import 'package:book/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:book/core/widgets/custom_error_widget.dart';
import 'package:book/core/widgets/custom_loading_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //اي قائمه داخل عنصر متعدد مثل الصف او العمود
    // لا بد ان تكون expanded
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
        builder: (context, state) {
      if (state is NewsetBooksSuccess) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * .17,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: 10,
            itemBuilder: (context, index) {
              //العناصر في القائمه الكتب المحتويات
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(bookModel: state.books[index]),
              );
            },
          ),
        );
      } else if (state is NewsetBooksFailure) {
        return CustomErrorWidget(errMessage: state.errMessage);
      } else {
        return const CustomLoadingIndicator();
      }
    });
  }
}
