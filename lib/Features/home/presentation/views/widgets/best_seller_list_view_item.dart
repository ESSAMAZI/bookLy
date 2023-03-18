import 'package:book/constants.dart';
import 'package:book/core/utils/assets.dart';
import 'package:book/core/utils/styles.dart';

import 'package:flutter/material.dart';

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
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                '  Harry Potter and the Goblet of Fire',
                style: Styles.textStyle20.copyWith(
                  fontFamily: kGtSectraFine,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis, //في تكمله لنص اذا كبر النص
              ),
            ),
            const SizedBox(height: 3),
            const Text(
              'J.K. Rowling',
              style: Styles.textStyle14,
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                Text(
                  '19.99 €',
                  style: Styles.textStyle20.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}
