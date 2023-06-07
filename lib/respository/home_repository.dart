
import 'package:movie_mania/data/network/BaseApiServices.dart';
import 'package:movie_mania/data/network/NetworkApiServices.dart';
import 'package:movie_mania/model/movies_model.dart';
import 'package:movie_mania/res/app_url.dart';

class HomeRepository {

  BaseApiServices _apiServices = NetworkApiService();

  Future<MovieListModel> fetchMoviesList()async{

    try{

      dynamic response = await _apiServices.getGetApiResponse(AppUrl.moviesListEndPoint);
      return response = MovieListModel.fromJson(response);

    }catch(e){
      throw e;
    }
  }

}