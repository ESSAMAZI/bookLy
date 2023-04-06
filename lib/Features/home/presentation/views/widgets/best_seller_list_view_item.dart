import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book/constants.dart';
import 'package:book/core/utils/app_router.dart';
import 'package:book/core/utils/styles.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // AspectRatio(
            //   aspectRatio: 2.5 / 4,
            //   child: Container(
            //     decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(8),
            //         color: Colors.red,
            //         image: const DecorationImage(
            //           fit: BoxFit.fill,
            //           image: AssetImage(
            //             AssetsData.testImage,
            //           ),
            //         )),
            //   ),
            // ),
            CustomBookImage(
              imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? '',
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              //من اجل التحكم في ابعاد المسافه بين السعر والتقيم
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo!.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow:
                          TextOverflow.ellipsis, //في تكمله لنص اذا كبر النص
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(
                    bookModel.volumeInfo!.authors![0],
                    style: Styles.textStyle14,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      //تقييم الكتاب
                      BookRating(
                        count: bookModel.volumeInfo!.ratingsCount ?? 0,
                        rating: bookModel.volumeInfo!.averageRating ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
