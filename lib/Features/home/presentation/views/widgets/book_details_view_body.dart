import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/presentation/views/widgets/books_details_sectioni.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:book/Features/home/presentation/views/widgets/similar_books_section.dart';

import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key, required this.bookModel})
      : super(key: key);
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    //نعطي قيمه متغيره لصوره لانها مش ثابته
    // علشان تاخذ الطول العرض لكل المقاسات

    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                //image

                BookDetailsSection(bookModel: bookModel),
                const Expanded(child: SizedBox(height: 50)),
                //القائمة الجانيه
                const SimilarBooksSection(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        )
      ],
    );
  }
}
