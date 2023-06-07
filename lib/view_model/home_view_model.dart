
import 'package:flutter/material.dart';
import 'package:movie_mania/respository/home_repository.dart';

class HomeViewModel with ChangeNotifier {

  final _myRepo = HomeRepository();

  Future<void> fetchMoviesListApi()async{

    _myRepo.fetchMoviesList().then((value){

    });
  }
}