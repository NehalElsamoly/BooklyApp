import 'package:booklyapp/core/erroes/failure.dart';
import 'package:booklyapp/features/home/data/models/homeViewModel.dart';
import 'package:booklyapp/features/home/data/repostry/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utlis/api_sevice.dart';

class Home_Repo_impl implements HomeRepo{
  @override
  late final ApiService apiservice ;
  Future<Either<Failure, List<Item>>> FetchprogrammingBook()async {
    // TODO: implement FetchBestSellerBook
    try {
      var data = await apiservice.get(
          endPoint: 'https://www.googleapis.com/books/v1/volumes?q=computer');
      //https://www.googleapis.com/books/v1/volumes?q=subject:programming
      List<Item>books=[];
      for(var item in data['items']){//مرلي ع الداتا الي هتيجي هاتلي منها ال items
books.add(Item.fromJson(item));//من الليست الفاضيه الي هجيبها من الموديل ضفلي فيها كود الجاسون الي يجي الي فيه الايتم
      }
return right(books);
    } catch(e){
      if(e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Item>>> FetchFeatureBook() async{
    try {
      var data = await apiservice.get(
          endPoint: 'https://www.googleapis.com/books/v1/volumes?q=computer');
      //https://www.googleapis.com/books/v1/volumes?q=subject:programming
      List<Item>books=[];
      for(var item in data['items']){//مرلي ع الداتا الي هتيجي هاتلي منها ال items
        books.add(Item.fromJson(item));//من الليست الفاضيه الي هجيبها من الموديل ضفلي فيها كود الجاسون الي يجي الي فيه الايتم
      }
      return right(books);
    } catch(e){
      if(e is DioError) {
        return left(ServerFailure.fromDiorError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

}