import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/presentation/views/widgets/book_rating.dart';
import 'package:book/Features/home/presentation/views/widgets/books_action.dart';
import 'package:book/Features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:book/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookImage(
              imageUrl: bookModel.volumeInfo!.imageLinks?.thumbnail ?? ''),
        ),
        const SizedBox(height: 43),
        Text(
          bookModel.volumeInfo!.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6),
        Opacity(
          opacity: .7,
          child: Text(bookModel.volumeInfo!.authors?[0] ?? '',
              style: Styles.textStyle18.copyWith(
                  fontStyle: FontStyle.italic, fontWeight: FontWeight.w500)),
        ),
        const SizedBox(height: 18),
        //التحكم في موقعها يكون عن طريقها نفسها
        //const BookRating(mainAxisAlignment: MainAxisAlignment.center),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo!.averageRating ?? 0,
          count: bookModel.volumeInfo!.ratingsCount ?? 0,
        ),
        const SizedBox(height: 37),
        const BooksAction(),
      ],
    );
  }
}
