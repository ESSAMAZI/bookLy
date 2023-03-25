import 'package:book/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book/Features/home/presentation/views/widgets/books_action.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookImage(),
        ),
        const SizedBox(height: 43),
        Text('The Jungle Book',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(height: 18),
        //التحكم في موقعها يكون عن طريقها نفسها
        //const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
