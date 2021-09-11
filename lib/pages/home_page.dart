import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:training_project/models/catalog.dart';
import 'package:training_project/models/catalog.dart';
import 'package:training_project/utils/routes.dart';
import 'package:training_project/widgets/drawer.dart';
import 'package:training_project/widgets/item_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    var catalogJson = await rootBundle.loadString("assets/file/catalog.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade800,
        onPressed: () {
          Navigator.pushNamed(context, MyRoutes.cartRoute);
        },
        child: Icon(Icons.shopping_cart),
      ),
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent.shade100,
        elevation: 2.0,
        shadowColor: Colors.deepPurple,
        title: Text(
          "Catalog App",
          style: GoogleFonts.lato(fontSize: 40.0, fontWeight: FontWeight.bold),
        ),
      ),
      body:
          //SingleChildScrollView(

          //child:
          Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
                //scrollDirection: Axis.vertical,
                //shrinkWrap: true,
                itemCount: CatalogModel.items.length,
                itemBuilder: (context, index) {
                  return ItemWidget(
                    item: CatalogModel.items[index],
                  );
                },
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      //),
      drawer: MyDrawer(),
    );
  }
}
