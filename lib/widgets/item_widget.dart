import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:training_project/models/catalog.dart';
import 'package:training_project/pages/home_page_detail.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemWidget extends StatelessWidget {
  final Item item;
  const ItemWidget({Key key, @required this.item})
      : assert(item != null),
        super(key: key);

  //final Item item;

  //const ItemWidget({Key key, @required this.item}): assert(item !=null),super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: 80,
        padding: EdgeInsets.all(3.0),
        child: Card(
          elevation: 3.0,
          shadowColor: Colors.deepPurple,
          margin: EdgeInsets.all(5.0),
          child: ListTile(
            leading: Image.network(
              item.image,
              scale: 1.0,
              alignment: Alignment.centerLeft,
            ),
            title: Text(
              item.name,
              style: GoogleFonts.lato(),
            ),
            subtitle: Text(
              item.desc,
              style: GoogleFonts.lato(fontSize: 12.0),
            ),
            trailing: Text(
              "\$${item.price}",
              textScaleFactor: 1.0,
              style: TextStyle(
                color: Colors.deepPurple,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomeDetailPage(item: item)),
            ),
          ),
        ),
      ),
    );
  }
}

//Container( //height: 80.0,width: 80.0,alignment: Alignment.centerLeft,decoration: BoxDecoration(boxShadow: [
//BoxShadow(color: Colors.deepPurple, blurRadius: 5.0),],
//border: Border.all(color: Colors.deepPurple, width: 1.0),
//image: DecorationImage(image: NetworkImage(item.image),fit: BoxFit.fill,
//scale: 4.0,
//alignment: Alignment.centerLeft,
//height: 100.0,
//width: 100.0,),),),
