import 'package:flutter/material.dart';
import 'package:training_project/models/cart.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Cart"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: _CartList(),
            ),
          ),

          Divider(),

          _CartTotal(),
        ],
      ),
    );
  }
}



class _CartTotal extends StatelessWidget {
  final _cart= CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "\$${_cart.totalPrice}",
            style: TextStyle(fontSize: 35.0),
          ),

          SizedBox(width: 30.0),

          Container(
            width: 32.0,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
              ),
                onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content:Text("You cannot purchase now.")));
                },
                child: Text(
                  "Buy",
                ),
            ),
          ),
        ],
      ),
    );
  }
}


class _CartList extends StatefulWidget {

  @override
  __CartListState createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  final _cart= CartModel();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items?.length,
      itemBuilder: (context,index)=> ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
            icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
      ),
        title: Text(
          _cart.items[index].name
        ),
      ),

    );
  }
}



