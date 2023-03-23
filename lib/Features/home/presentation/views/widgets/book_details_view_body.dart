import 'package:book/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book/Features/home/presentation/views/widgets/books_action.dart';
import 'package:book/core/utils/styles.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //نعطي قيمه متغيره لصوره لانها مش ثابته
    // علشان تاخذ الطول العرض لكل المقاسات
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          //image
          SizedBox(height: height * .05),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .19),
            child: const CustomBookImage(),
          ),
          const SizedBox(height: 30),
          Text('The Jungle Book',
              style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
          const SizedBox(height: 7),
          Opacity(
            opacity: .7,
            child: Text('Rudyard Kipling',
                style: Styles.textStyle18.copyWith(
                    fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
          ),
          const SizedBox(height: 14),
          //التحكم في موقعها يكون عن طريقها نفسها
          //const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          const BooksAction(),
        ],
      ),
    );
  }
}
