import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:market_app/models/productModel.dart';
import 'package:market_app/presentations/views/detailProduct.dart';

class Home extends StatelessWidget {
  final String value;
  const Home({Key key, this.value}) : super(key: key);


  String greeting() {
    var jam = DateTime.now().hour;
    if (jam < 12) {
      return 'Morning';
    }
    if (jam < 17) {
      return 'Afternoon';
    }
      return 'Evening';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        //padding: EdgeInsets.all(16),
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(35, 30, 249, 0),
              child: Text(
                'Good ' + greeting(),
                style: TextStyle(fontSize: 14),
              )
          ),
          Container(
            margin: EdgeInsets.only(bottom: 15, left: 35),
              child: Text(value, style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w700),),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(35, 15, 30, 16),
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(32),
            ),
            child: TextFormField(
              onChanged: (value){},
              decoration: InputDecoration(
                hintText: 'What would you like to buy? ',
                prefixIcon: Icon(Icons.search_rounded),
                border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/Feeds.png',width: 305, fit: BoxFit.cover,),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 35, top: 30),
            child: Text('Categories', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),),
          ),
          Container(
            height: 38,
            margin: EdgeInsets.only( top: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 109,
                  margin: EdgeInsets.only(right: 10, left: 35),
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(6),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    icon: Image.asset('assets/category1.png'),
                    label: Text('Vegetable', style: TextStyle(color: Colors.white),),
                    color: Colors.green[300],
                  ),
                ),
                Container(
                  width: 109,
                  margin: EdgeInsets.only(right: 10),
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(6),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    icon: Image.asset('assets/category 2.png'),
                    label: Text('Fruit'),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 109,
                  margin: EdgeInsets.only(right: 10),
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(6),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    icon: Image.asset('assets/category 3.png'),
                    label: Text('Spice'),
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 109,
                  margin: EdgeInsets.only(right: 10),
                  child: RaisedButton.icon(
                    padding: EdgeInsets.all(6),
                    onPressed: (){},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0))),
                    icon: Image.asset('assets/category 4.png'),
                    label: Text('Meat'),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 35, right: 35, top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Today Deals',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16),
                  ),
                  TextButton(
                    onPressed: (){},
                      child: Text('See All',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            color: Colors.green),
                      ),
                  ),
                ],
              ),
          ),
          Container(
            height: 165,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  child: Card(
                    margin: EdgeInsets.only(left: 35, top: 11, right: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Hero(
                            tag: 'Bok Choy',
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/Rectangle 12.png', fit: BoxFit.cover,
                                )
                            ),
                          ),
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11, top: 5),
                            child: Text(
                                'Bok Choy', style: TextStyle(fontSize: 15),),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 11),
                                  child: Text(
                                      new String.fromCharCodes(new Runes('\u0024')), style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),)
                              ),
                              Text('1.38', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),),
                              Text(" /kg"),
                              Container(
                                margin: EdgeInsets.only(left: 28),
                                child: IconButton(
                                    icon: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                          Icons.add),
                                    ),
                                    onPressed: (){}),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Card(
                    margin: EdgeInsets.only(top: 11, right: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Hero(
                            tag: 'Spinach',
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/Rectangle 14.png', fit: BoxFit.cover,)
                            ),
                          ),
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11, top: 5),
                          child: Text(
                            'Spinach', style: TextStyle(fontSize: 15),),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 11),
                                  child: Text(
                                    new String.fromCharCodes(new Runes('\u0024')), style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),)
                              ),
                              Text('1.38', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),),
                              Text(" /kg"),
                              Container(
                                margin: EdgeInsets.only(left: 28),
                                child: IconButton(
                                    icon: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                          Icons.add),
                                    ),
                                    onPressed: (){}),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Card(
                    margin: EdgeInsets.only(top: 11, right: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Hero(
                            tag: 'Broccoli',
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/Rectangle 16.png', fit: BoxFit.cover, height: 83,)
                            ),
                          ),
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11, top: 5),
                          child: Text(
                            'Broccoli', style: TextStyle(fontSize: 15),),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 11),
                                  child: Text(
                                    new String.fromCharCodes(new Runes('\u0024')), style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),)
                              ),
                              Text('2.99', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),),
                              Text(" /kg"),
                              Container(
                                margin: EdgeInsets.only(left: 28),
                                child: IconButton(
                                    icon: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                          Icons.add),
                                    ),
                                    onPressed: (){}),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                ),
                Container(
                  child: Card(
                    margin: EdgeInsets.only(top: 11, right: 10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Hero(
                            tag: 'Cabbage',
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset('assets/Rectangle 18.png', fit: BoxFit.cover, height: 83,)
                            ),
                          ),
                          width: 150,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 11, top: 5),
                          child: Text(
                            'Cabbage', style: TextStyle(fontSize: 15),),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 11),
                                  child: Text(
                                    new String.fromCharCodes(new Runes('\u0024')), style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),)
                              ),
                              Text('1.24', style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green),),
                              Text(" /kg"),
                              Container(
                                margin: EdgeInsets.only(left: 28),
                                child: IconButton(
                                    icon: CircleAvatar(
                                      backgroundColor: Colors.green,
                                      child: Icon(
                                          Icons.add),
                                    ),
                                    onPressed: (){}),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15, left: 35, right: 35),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Fresh Product',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 16),
                ),
                TextButton(
                  onPressed: (){},
                  child: Text('See All',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.green),
                  ),
                ),
              ],
            ),
          ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 35, right: 35),
                height: 400,//MediaQuery.of(context).size.height,
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index){
                      final ProductModel product = productList[index];
                      return InkWell(

                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return DetailProduct(product: product,);
                          }));
                        },
                        child: Expanded(
                          flex: 1,
                          child: Container(
                            height: 130,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    child: Expanded(
                                      flex:1,
                                      child: ClipRRect(
                                      child: Image.asset(
                                          product.gambar, fit: BoxFit.cover,),
                                    borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    width: 150,
                                    height: 140,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 120,
                                          child: Text(
                                            product.nama,
                                            style: TextStyle(fontSize: 16),
                                            overflow: TextOverflow.visible,
                                            softWrap: false,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            Icon(Icons.star,color: Colors.yellow,),
                                            Container(
                                              margin: EdgeInsets.only(left: 5),
                                                child: Text(product.rating))
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  new String.fromCharCodes(new Runes('\u0024')) + product.harga, style: TextStyle(fontWeight: FontWeight.w700, color: Colors.green)
                                                ),
                                                Text(' /kg')
                                              ],
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 28),
                                              child: IconButton(
                                                  icon: CircleAvatar(
                                                    backgroundColor: Colors.green,
                                                    child: Icon(
                                                        Icons.add),
                                                  ),
                                                  onPressed: (){}),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  itemCount: productList.length,
                ),
              ),
            ),

        ],
      ),
    );
  }
}
