import 'package:flipkart/Bloc/signupbloc/signupbloc_bloc.dart';
import 'package:flipkart/ModelClasses/signup_modelclass.dart';
import 'package:flipkart/Screens/homepage.dart';
import 'package:flipkart/Screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  late SignupModelclass signupModelclass;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: BlocListener<SignupblocBloc, SignupblocState>(
          listener: (context, state)  async{
            if (state is SignupblocLoaded){
signupModelclass = BlocProvider.of<SignupblocBloc>(context).signupModelclass;
              SharedPreferences prefs = await SharedPreferences.getInstance();
              print("token in ui"+signupModelclass.jwt.toString());
              prefs.setString('token', signupModelclass.jwt.toString(),);
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) =>
                          HomePage()));
              if (state is SignupblocLoading){
                Center(
                  child: CircularProgressIndicator(

                  ),
                );

              }
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
                child: Column(children: [
                  // Container(
                  //   height: MediaQuery.of(context).size.height * .1,
                  //   width: MediaQuery
                  //       .of(context)
                  //       .size
                  //       .width,
                  // ),
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
                        'Sign Up',
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
                          child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: TextFormField(
                                    controller: usernameController,


                                    keyboardType: TextInputType.emailAddress,
                                    decoration: InputDecoration(
                                        hintText: 'Username',
                                        border: OutlineInputBorder(),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: MediaQuery.of(context).size.width *
                                                  .005,
                                              color: Colors.grey),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: MediaQuery.of(context).size.width *
                                                  .005,
                                              color: Colors.grey),
                                          borderRadius: BorderRadius.circular(15),
                                        )),

                                  ),
                                ),
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
                                              width: MediaQuery.of(context).size.width *
                                                  .005,
                                              color: Colors.grey),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: MediaQuery.of(context).size.width *
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
                                              width: MediaQuery.of(context).size.width *
                                                  .005,
                                              color: Colors.grey),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: MediaQuery.of(context).size.width *
                                                  .005,
                                              color: Colors.grey),
                                          borderRadius: BorderRadius.circular(15),
                                        )),

                                  ),
                                ),

                                ElevatedButton(
                                    onPressed:(){
                                      BlocProvider.of<SignupblocBloc>(context).add(
                                          FetchSignup(usernameController.text , emailController.text,
                                              passwordController.text));
                                    },

                                    style: ElevatedButton.styleFrom(
                                      elevation: 2,
                                      primary: Colors.grey,
                                    ),
                                    child: Text('SignUp',
                                        style:
                                        TextStyle(color: Colors.white, fontSize: 15)))

                              ])
                      )
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .15,
                    width: MediaQuery.of(context).size.width,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop(MaterialPageRoute(
                          builder: (context) => LoginScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                    ),
                    child: Text('Already a user? LOGIN',
                        style: TextStyle(color: Colors.black, fontSize: 15)),
                  )

                ])
            )),
));
  }
}
