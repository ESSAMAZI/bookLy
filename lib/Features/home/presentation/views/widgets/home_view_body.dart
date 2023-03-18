import 'package:book/Features/home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          //تصميم الاب بار العلوي
          CustomAppBar(),
          // CustomListViewItem(),
          //تصميم العروض التمرريه
          FeaturedBooksListView(), //تحتاج الى تحديد مساحه الارتفاع
          SizedBox(height: 40),
          Text(
            'Best Seller',
            style: Styles.textStyle18,
          ),
          SizedBox(height: 20),
          //العناصر في القائمه الكتب
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}
