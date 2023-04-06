import 'package:book/Features/home/presentation/views/widgets/best_seller_list_sliver_view.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //لكل الشاشه Scroll عمل
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        //لكل الشاشه Scroll عمل
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              //تصميم الاب بار العلوي
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              // CustomListViewItem(),
              //تصميم العروض التمرريه
              FeaturedBooksListView(), //تحتاج الى تحديد مساحه الارتفاع
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'News Book',
                  style: Styles.textStyle18,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        //حل سابق لكن لا تتحرك معانا قائمه الكتب
        // const SliverFillRemaining(
        //   //العناصر في القائمه الكتب القائمه
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 30),
        //     child: BestSellerListView(),
        //   ),
        // )

        const BestSellerSliverListView()
      ],
    );
  }
}
