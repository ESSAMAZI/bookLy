import 'package:book/Features/home/data/models/book_model/book_model.dart';
import 'package:book/Features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:book/core/errors/failures.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}