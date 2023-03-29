import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repo.dart';
import 'package:book/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:book/core/errors/failures.dart';

class HomeRepoImpl implements HomeRepo {
  // ننشى كائن من كلاس API
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      //نستقبل الداتا
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=computer science');
      //البيانات التي رح ترجع لنا نضعها بداخل قائمه
      List<BookModel> books = [];
      //نعمل لوب لتحميل البيانات
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      return left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
