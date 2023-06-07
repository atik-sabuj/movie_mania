import 'package:flutter/material.dart';
import 'package:movie_mania/utils/routes/routes_name.dart';
import 'package:movie_mania/view_model/user_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final userPreference = Provider.of<UserViewModel>(context);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: InkWell(
            onTap: (){
              userPreference.remove().then((value){
                Navigator.pushNamed(context, RoutesName.login);
              });
            },
            child: Text('Logout')),
        backgroundColor: Colors.teal,
      ),
      body: SafeArea(
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
