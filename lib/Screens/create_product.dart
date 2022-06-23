import 'package:flutter/material.dart';

class CreateProduct extends StatefulWidget {
  const CreateProduct({Key? key}) : super(key: key);

  @override
  State<CreateProduct> createState() => _CreateProductState();
}

class _CreateProductState extends State<CreateProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {  Navigator.pop(context);},

              );
            },
          )
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Container(



            )



          ],
        ),
      ),

    );
  }
}
