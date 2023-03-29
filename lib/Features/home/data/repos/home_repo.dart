import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/core/errors/failures.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  //  تعمل ايهFeatures نحدد
  // نحدد الشاشة ماذا تعمل
  //قائمه الجانبيه لكتب -2 القائمه الكتب كامله

  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks();
}
//The repository pattern
// رح تعمل ايه فقط Features نستخدمه من اجل ان نحدد بشكل صرايح وواضح
//بدون التدخل في طريقه عملها فقط نحدد

//Either نحدد القيم التي رح ترجع لنا ونهدل 
//الرجاع من البيانات