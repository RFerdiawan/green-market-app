import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/models/productModel.dart';

class DetailProduct extends StatelessWidget {
  final ProductModel product;
  const DetailProduct({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Stack(
                children: [
                  Image.asset(product.gambar,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 16, top: 14),
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 16.0),
                    child: Center(
                      child: Text(
                        product.nama,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: 'Staatliches',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: Column(
                  children: [
                    Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),
                    Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', textAlign: TextAlign.center,)
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 35,top: 14),
                  child: Text('Price', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
              ),
              Container(
                  margin: EdgeInsets.only(left: 35,top: 10),
                  child: Text(new String.fromCharCodes(new Runes('\u0024')) + product.harga, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){},
        icon: Icon(Icons.add_shopping_cart_rounded),
          label: Text('Add to Cart'),
        backgroundColor: Colors.green,
      ),
    );
  }
}
