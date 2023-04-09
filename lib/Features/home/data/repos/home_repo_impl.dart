import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repo.dart';
import 'package:book/core/utils/api_service.dart';
import 'package:dartz/dartz.dart';
import 'package:book/core/errors/failures.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  // ننشى كائن من كلاس API
  final ApiService apiService;
  HomeRepoImpl(this.apiService);

//جلب الكتب الجديده والمجانيه
//Either (Error, get Data ALL no error)
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewsetBooks() async {
    try {
      //نستقبل الداتا
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=flutter');
      //البيانات التي رح ترجع لنا نضعها بداخل قائمه
      List<BookModel> books = [];
      //نعمل لوب لتحميل البيانات
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      //return left(ServerFailure(e.toString()));
      if (e is DioError) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

//جلب الكتب فقط المجانية
  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:Programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioError) {
        return left(
          ServerFailure.fromDioError(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
