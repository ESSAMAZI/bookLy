import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/core/utils/function/custom_snack_bar.dart';
import 'package:book/core/utils/function/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:book/core/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          const Expanded(
              child: CustomButton(
            text: 'Free',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              bottomLeft: Radius.circular(16),
            ),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
              // Uri uri = Uri.parse(bookModel.volumeInfo!.previewLink!);
              // // if (await canLaunchUrl(uri)) {
              // //   throw 'Could not launch $uri';
              // // } else {
              // //   await launchUrl(uri);
              // // }
              // if (await canLaunchUrl(uri)) {
              //   await launchUrl(uri);
              // } else {
              //   print('Cannot launch $uri');
              // }
              launchCustomUr(context, bookModel.volumeInfo!.previewLink);
              //launchCustomUr(context, 'https://www.youtube.com/');
            },
            text: getText(bookModel),
            fontSize: 16,
            backgroundColor: const Color(0xffEF8262),
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
          )),
        ],
      ),
    );
  }

//التحقق من ان الكتب يحتوي على رابط لقراءة
  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo!.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
