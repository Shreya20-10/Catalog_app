import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:training_project/models/catalog.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeDetailPage extends StatelessWidget {
  final Item item;
  const HomeDetailPage({Key key, @required this.item})
      : assert(item != null),
        super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ButtonBar(
        buttonPadding: EdgeInsets.all(10.0),
        children: [
          Text(
            "\$${item.price}",
            style: TextStyle(
                color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25.0),
          ),
          SizedBox(width: 180.0),
          Container(
            padding: EdgeInsets.all(5.0),
            height: 30,
            width: 65,
            decoration: BoxDecoration(
              color: Colors.grey.shade800,
              borderRadius: BorderRadius.all(
                Radius.circular(30.0),
              ),
            ),
            child: Text(
              "Buy",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
      //child:Text("\$${item.price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 30.0),),

      backgroundColor:
          //Colors.white,
          //Colors.grey.shade300,
          Colors.grey.shade200,
      body: SafeArea(
        bottom: false,
        child: Container(
          // height: 800,
          constraints: BoxConstraints(
            maxHeight: double.infinity,
          ),

          child: SingleChildScrollView(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    margin: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple,
                        blurRadius: 3.0,
                        spreadRadius: 3.0,
                        //offset: Offset(5.0,5.0),
                      )
                    ]
                        //border: Border.all(color: Colors.deepPurple, width: 3.0,),
                        ),
                    height: 320,
                    width: 350,
                    child: Image.network(item.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.deepPurple,
                              blurRadius: 3.0,
                              spreadRadius: 3.0,
                              //offset: Offset(5.0,5.0),
                            )
                          ]
                          //border: Border.all(color: Colors.deepPurple, width: 3.0,),
                          ),
                      //height: 500,
                      margin: EdgeInsets.all(12.0),
                      //color: Colors.white,
                      //constraints: BoxConstraints(maxHeight: double.infinity,),
                      child: Column(
                        //mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            item.name,
                            style: GoogleFonts.lato(
                                fontSize: 35.0, fontWeight: FontWeight.bold),
                            //TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                          ),
                          Text(
                            item.desc,
                            style: GoogleFonts.lato(color: Colors.deepPurple),
                            textAlign: TextAlign.center,
                            //(fontSize: 40.0,fontWeight: FontWeight.bold ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                              style: GoogleFonts.lato(fontSize: 14.0),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
