
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:movie_mania/model/user_model.dart';
import 'package:movie_mania/utils/routes/routes_name.dart';
import 'package:movie_mania/view_model/user_view_model.dart';

class SplashServices {

  Future<UserModel> getUserData() => UserViewModel().getUser();


  void checkAuthentication(BuildContext context)async{

    getUserData().then((value)async{

      if(value.token == 'null' || value.token == ''){
        await Future.delayed(Duration(seconds: 3));
        Navigator.pushNamed(context, RoutesName.login);
      }else {
        await Future.delayed(Duration(seconds: 3));
        Navigator.pushNamed(context, RoutesName.home);
      }

    }).onError((error, stackTrace){
      if(kDebugMode){
        print(error.toString());
      }
    });
  }

}