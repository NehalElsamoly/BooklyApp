import 'package:bloc/bloc.dart';
import 'package:booklyapp/features/home/data/models/homeViewModel.dart';
import 'package:booklyapp/features/home/data/repostry/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homerepo) : super(FeaturedBookInitial());
  final HomeRepo homerepo;
  Future <void>FetchprogrammingBook()async{
    emit(FeaturedBooksLoading());
    var result=await homerepo.FetchprogrammingBook();
    result.fold((failure) {
      emit(FeaturedBooksFailure(failure.message));
      },(books){
      emit(FeaturedBooksSuccess(books));
    }
    );

  }
}
