import 'dart:io';

import 'package:flipkart/Bloc/ImageBloc/imge_bloc.dart';
import 'package:flipkart/Bloc/UpdateUserBloc/update_user_bloc.dart';
import 'package:flipkart/ModelClasses/updateuser_modelclass.dart';
import 'package:flipkart/ModelClasses/uploadimage_class.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  late UploadimageClass uploadimageClass;
  late UpdateuserModelclass updateuserModelclass;

  File? image;
  ImagePicker picker = ImagePicker();

  // imageSelectorGallery() async {
  //   XFile? image = await picker.pickImage(source: ImageSource.gallery);
  //   setState(() async{
  //    img = File(galleryFile!.path);
  //
  //   });
  //   print(galleryFile.toString());
  // }
  pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return;
      final imageTemporary = File(image.path);
      setState(() => this.image = imageTemporary);
      print("15198495+98  "+imageTemporary.path);
     // uploadimageClass = BlocProvider.of<ImgeBloc>(context).uploadimageClass;
      BlocProvider.of<ImgeBloc>(context).add(PutImage(imageTemporary.path));

    } on PlatformException catch (e) {
      print('fail to pick image : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ImgeBloc, ImgeState>(
      listener: (context, state) async {
        if (state is ImgeLoaded) {
          uploadimageClass =
              BlocProvider.of<ImgeBloc>(context).uploadimageClass;
        }
        if (state is ImgeLoading) {
          Center(
            child: CircularProgressIndicator(),
          );
        }
        // TODO: implement listener
      },
      child: Scaffold(
        appBar: AppBar(leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
            );
          },
        )),
        resizeToAvoidBottomInset: false,
        body: Container(
          color: Colors.blue,
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * .1,
                width: MediaQuery.of(context).size.width,
                //  color: Colors.red,
              ),
              Container(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                // color: Colors.yellow,
                child: GestureDetector(
                  onTap: () {
                    return pickImage();
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: image == null
                        ? ClipOval(child: Icon(Icons.person))
                        : Image.file(
                            image!,
                            width: 150,
                            height: 150,
                            fit: BoxFit.cover,
                          ),
                  ),
                ),
              ),
              BlocListener<UpdateUserBloc, UpdateUserState>(
                listener: (context, state) async {
                  if (state is UpdateUserLoaded) {
                    updateuserModelclass =
                        BlocProvider.of<UpdateUserBloc>(context)
                            .updateuserModelclass;
                  }
                  if (state is UpdateUserLoading) {
                    Center(
                      child: CircularProgressIndicator(),
                    );
                  }

                  // TODO: implement listener
                },
                child: Container(
                    height: MediaQuery.of(context).size.height * .45,
                    width: MediaQuery.of(context).size.width,
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .005,
                                        color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width:
                                            MediaQuery.of(context).size.width *
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .005,
                                        color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .005,
                                        color: Colors.grey),
                                    borderRadius: BorderRadius.circular(15),
                                  )),
                            ),
                          ),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<UpdateUserBloc>(context).add(
                                    PutCredential(emailController.text,
                                        passwordController.text));
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 2,
                                primary: Colors.grey,
                              ),
                              child: Text('Update',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15)))
                        ]))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
