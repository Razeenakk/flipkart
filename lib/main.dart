import 'package:flipkart/Api/get%20api.dart';
import 'package:flipkart/Api/post_api.dart';
import 'package:flipkart/Api/put_api.dart';
import 'package:flipkart/Api/user_api.dart';
import 'package:flipkart/Bloc/ImageBloc/imge_bloc.dart';
import 'package:flipkart/Bloc/ProductBloc/get_products_bloc.dart';
import 'package:flipkart/Bloc/SigninBloc/signinbloc_bloc.dart';
import 'package:flipkart/Bloc/UpdateUserBloc/update_user_bloc.dart';
import 'package:flipkart/Bloc/signupbloc/signupbloc_bloc.dart';
import 'package:flipkart/Screens/login_screen.dart';
import 'package:flipkart/Screens/profile_screen.dart';

import 'package:flipkart/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  UserApi userApi = UserApi();
  ProductApi productApi = ProductApi();
  UpdateUserApi  updateUserApi = UpdateUserApi();
  ImageApi imageApi =ImageApi();


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
    BlocProvider<SigninblocBloc>(
    create: (context) => SigninblocBloc(userApi),
    ),
          BlocProvider<SignupblocBloc>(
            create: (context) => SignupblocBloc(userApi),
          ),
          BlocProvider<GetProductsBloc>(
            create: (context) => GetProductsBloc(productApi),
          ),
          BlocProvider<ImgeBloc>(
            create: (context) => ImgeBloc(imageApi),
          ),
          BlocProvider<UpdateUserBloc>(
            create: (context) => UpdateUserBloc(updateUserApi),
          ),

  ],


    child:  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: LoginScreen(),
    ) );
  }
}

