import 'package:flipkart/Bloc/ProductBloc/get_products_bloc.dart';
import 'package:flipkart/ModelClasses/ProductsModelclass.dart';
import 'package:flipkart/Screens/create_product.dart';
import 'package:flipkart/Screens/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late ProductsModelclass productsModelclass;
  final imagepathurl = "http://192.168.18.32:1338";

  @override
  void initState() {
    BlocProvider.of<GetProductsBloc>(context).add(FetchProducts());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4079db),
        title: Container(
          child: Column(
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          'Flipkart',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              'Explore',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                            Text(
                              'Plus',
                              style:
                                  TextStyle(color: Colors.yellow, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottom: PreferredSize(
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                height: MediaQuery.of(context).size.height * .05,
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    labelText: 'Search for Products,Brand and More',
                  ),
                ),
              ),
            ),
            preferredSize: const Size.fromHeight(50.0)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {
              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CreateProduct()));

              // handle the press
            },
          ),
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ProfileScreen()));

              // handle the press
            },
          ),
        ],
      ),
      body: BlocBuilder<GetProductsBloc, GetProductsState>(
        builder: (context, state) {
          if (state is GetProductLoaded) {
            productsModelclass =
                BlocProvider.of<GetProductsBloc>(context).productsModelclass;
            return Container(
                child: LayoutBuilder(builder: (context, constraint) {
              // print(imagepathurl+productsModelclass.data![0].attributes!.image!.data!.attributes!.url.toString());

              return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: ConstrainedBox(
                      constraints:
                          BoxConstraints(minHeight: constraint.maxHeight),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .25,
                            width: MediaQuery.of(context).size.width,
                            //  color: Colors.grey,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: productsModelclass.data!.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              .3,
                                      width: MediaQuery.of(context).size.width *
                                          .99,
                                      decoration: BoxDecoration(
                                        //  color: Colors.orange,
                                        borderRadius: BorderRadius.circular(20),
                                        image: DecorationImage(
                                            image: NetworkImage(productsModelclass
                                                        .data![index]
                                                        .attributes!
                                                        .image!
                                                        .data !=
                                                    null
                                                ? imagepathurl +
                                                    productsModelclass
                                                        .data![index]
                                                        .attributes!
                                                        .image!
                                                        .data!
                                                        .attributes!
                                                        .url
                                                        .toString()
                                                : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXEMMA0vrs_hUXZgC55VEJqQoYTe06LaCrZw&usqp=CAU")),
                                      ));
                                }),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10.0),
                            child: Container(
                              height: MediaQuery.of(context).size.height * .05,

                              //  color: Colors.blue,
                              child: Row(
                                children: [
                                  Text('Sponsored'),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15.0),
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.height * .25,
                                width: MediaQuery.of(context).size.width,
                                color: Colors.grey,
                                child: ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: productsModelclass.data!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      //  print(productsModelclass.data!.length);
                                      //   print(productsModelclass.data![index].attributes!.image!.data!.attributes!.url.toString());
                                      return Card(
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .4,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .3,
                                          decoration: BoxDecoration(
                                            //  color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    productsModelclass
                                                                .data![index]
                                                                .attributes!
                                                                .image!
                                                                .data !=
                                                            null
                                                        ? imagepathurl +
                                                            productsModelclass
                                                                .data![index]
                                                                .attributes!
                                                                .image!
                                                                .data!
                                                                .attributes!
                                                                .url
                                                                .toString()
                                                        : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXEMMA0vrs_hUXZgC55VEJqQoYTe06LaCrZw&usqp=CAU")),
                                          ),
                                        ),
                                      );
                                    }),
                              ),
                            ),
                          ),
                          Container(

                              //   color: Colors.green,
                              child: GridView.builder(
                                  scrollDirection: Axis.vertical,
                                  shrinkWrap: true,
                                  itemCount: productsModelclass.data!.length,
                                  physics: NeverScrollableScrollPhysics(),
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 330,
                                          childAspectRatio: .65,
                                          crossAxisSpacing: 01,
                                          mainAxisSpacing: 2),
                                  itemBuilder: (context, index) {
                                    return Container(
                                        alignment: Alignment.center,
                                        child: Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              .3,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              .4,
                                          decoration: BoxDecoration(
                                            //  color: Colors.orange,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    productsModelclass
                                                                .data![index]
                                                                .attributes!
                                                                .image!
                                                                .data !=
                                                            null
                                                        ? imagepathurl +
                                                            productsModelclass
                                                                .data![index]
                                                                .attributes!
                                                                .image!
                                                                .data!
                                                                .attributes!
                                                                .url
                                                                .toString()
                                                        : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXEMMA0vrs_hUXZgC55VEJqQoYTe06LaCrZw&usqp=CAU")),
                                          ),
                                        ));
                                  }))
                        ],
                      )));
            }));
          }
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
