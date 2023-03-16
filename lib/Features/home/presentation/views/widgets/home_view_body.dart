import 'package:book/Features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:book/Features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:book/core/utils/assets.dart';
import 'package:book/core/utils/styles.dart';

import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
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
            style: Styles.titleMedium,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 120,
          child: AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                  image: const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AssetsData.testImage,
                    ),
                  )),
            ),
          ),
        ),
        Column(
          children: [],
        ),
      ],
    );
  }
}
