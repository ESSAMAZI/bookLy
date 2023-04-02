import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      //لا يوجد بها طول وعرض
      //aspectRatio حيث يتم تحديد حجم الصوره على اساس الطول العرض
      // الموجوده فيه
      aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            // color: Colors.red,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageUrl),
            )),
      ),
    );
  }
}
