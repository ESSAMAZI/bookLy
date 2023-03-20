import 'package:book/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:flutter/material.dart';

class BestSellerSliverListView extends StatelessWidget {
  const BestSellerSliverListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
            child: BestSellerListViewItem(),
          );
        },

        childCount: 10,
        // 1000 list items
      ),
    );
  }
}
