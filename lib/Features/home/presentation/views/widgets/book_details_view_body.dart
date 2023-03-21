import 'package:book/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //نعطي قيمه متغيره لصوره لانها مش ثابته
    // علشان تاخذ الطول العرض لكل المقاسات
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          //image
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .17),
            child: const CustomBookImage(),
          )
        ],
      ),
    );
  }
}
