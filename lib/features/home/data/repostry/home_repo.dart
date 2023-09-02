import 'package:booklyapp/core/erroes/failure.dart';
import 'package:booklyapp/features/home/data/models/homeViewModel.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
Future<Either<Failure,List<Item>>>  FetchprogrammingBook();
Future<Either<Failure,List<Item>>>FetchFeatureBook();
}