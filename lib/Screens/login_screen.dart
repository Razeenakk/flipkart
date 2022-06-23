import 'package:flipkart/Bloc/SigninBloc/signinbloc_bloc.dart';
import 'package:flipkart/ModelClasses/signin_modelclass.dart';
import 'package:flipkart/Screens/homepage.dart';

import 'package:flipkart/Screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  late SigninModelclass signinModelclass;

  @override
  void initState() {

  checkLogin();
    super.initState();
  }
  checkLogin()async{

    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getString('token') != null) {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => HomePage(),), (
          route) => false);
    }

  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocListener<SigninblocBloc, SigninblocState>(
        listener: (context, state) async {
          if (state is SigninblocLoaded) {
            signinModelclass = BlocProvider
                .of<SigninblocBloc>(context)
                .signinModelclass;
            // SharedPreferences prefs = await SharedPreferences.getInstance();
            // print("token in ui"+signinModelclass.jwt.toString());
            // prefs.setString('token', signinModelclass.jwt.toString(),);

            Navigator.of(context).push(
                MaterialPageRoute(
                    builder: (context) =>
                        HomePage()));
          }
          if (state is SigninblocLoading) {
            Center(
              child: CircularProgressIndicator(

              ),
            );
          }
          // TODO: implement listener
        },
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Container(
            height: MediaQuery
                .of(context)
                .size
                .height,
            width: MediaQuery
                .of(context)
                .size
                .width,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .1,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .2,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height * .45,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    // color: Colors.lightGreen,
                    child: Form(
                        key: formKey,
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              controller: emailController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'Email',
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width *
                                            .005,
                                        color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width *
                                            .005,
                                        color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextFormField(
                              controller: passwordController,
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  hintText: 'Password',
                                  border: OutlineInputBorder(),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width *
                                            .005,
                                        color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: MediaQuery
                                            .of(context)
                                            .size
                                            .width *
                                            .005,
                                        color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Forget Password',
                                style:
                                TextStyle(color: Colors.black, fontSize: 15),
                              )),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<SigninblocBloc>(context).add(
                                    Fetchsignin(emailController.text,
                                        passwordController.text));
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                primary: Colors.grey,
                              ),
                              child: Text('SignIn',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)))
                        ]))),
                SizedBox(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * .15,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                  ),
                  child: Text('New user? SIGN UP',
                      style: TextStyle(color: Colors.black, fontSize: 15)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
