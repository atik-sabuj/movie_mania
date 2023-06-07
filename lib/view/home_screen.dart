import 'package:flutter/material.dart';
import 'package:movie_mania/utils/routes/routes_name.dart';
import 'package:movie_mania/view_model/home_view_model.dart';
import 'package:movie_mania/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  HomeViewModel homeViewModel = HomeViewModel();

  @override
  void initState() {
    // TODO: implement initState
    homeViewModel.fetchMoviesListApi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final userPreference = Provider.of<UserViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          InkWell(
              onTap: (){
                userPreference.remove().then((value){
                  Navigator.pushNamed(context, RoutesName.login);
                });
              },
              child: Center(child: Text('Logout'))),
        ],
      ),
      body: ChangeNotifierProvider<HomeViewModel>(
        create: (BuildContext context) => homeViewModel,
        child: Consumer<HomeViewModel>(
          builder: (context, value, _){

            return Container();
          },),
      ),
    );
  }
}
