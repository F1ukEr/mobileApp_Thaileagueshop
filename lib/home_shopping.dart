import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'cart_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> _searchtitle = [];
  List<Product> _products = [
    Product(
        id: 1,
        title: "Buriram UTD Home",
        price: 690,
        imgUrl:
            "https://www.buriram.shop/api/uploads/product/7315e6391433a1c4ff476b17e58e83fa-2022-08-05-13-42-06LINE_ALBUM_BURIRAM%20UNITED%20JERSEY%20%202022-23_%E0%B9%92%E0%B9%92%E0%B9%90%E0%B9%98%E0%B9%90%E0%B9%94_3.jpg",
        qty: 1),
    Product(
        id: 2,
        title: "Buriram UTD Away",
        price: 690,
        imgUrl:
            "https://www.buriram.shop/api/uploads/product/349f4f3e6583339ed601f02d84af2082-2022-09-14-10-50-07LINE_ALBUM_BURIRAM%20UNITED%20JERSEY%20%202022-23_%E0%B9%92%E0%B9%92%E0%B9%90%E0%B9%98%E0%B9%92%E0%B9%93_9.jpg",
        qty: 1),
    Product(
        id: 3,
        title: "Port FC Home",
        price: 690,
        imgUrl:
            "https://firebasestorage.googleapis.com/v0/b/thaileagueshop-3eb6f.appspot.com/o/port.jpg?alt=media&token=3d02de92-5663-493c-b347-1592b4a138a2",
        qty: 1),
    Product(
        id: 4,
        title: "BG Patum UTD Home",
        price: 690,
        imgUrl:
            "https://firebasestorage.googleapis.com/v0/b/thaileagueshop-3eb6f.appspot.com/o/bgHome.jpg?alt=media&token=61966219-334b-40a0-8d2d-9ee79ee0fac0",
        qty: 1),
    Product(
        id: 5,
        title: "BG Patum UTD Away",
        price: 690,
        imgUrl:
            "https://firebasestorage.googleapis.com/v0/b/thaileagueshop-3eb6f.appspot.com/o/bgAway.jpg?alt=media&token=33dcc0fa-8c19-4cf0-9764-2222c798da9a",
        qty: 1),
    Product(
        id: 6,
        title: "Chonburi FC Home",
        price: 690,
        imgUrl:
            "https://firebasestorage.googleapis.com/v0/b/thaileagueshop-3eb6f.appspot.com/o/chonH.jpeg?alt=media&token=a2ef0822-a967-44df-ad81-f2e6f378665b",
        qty: 1),
    Product(
        id: 7,
        title: "Muangthong UTD Home",
        price: 690,
        imgUrl:
            "https://firebasestorage.googleapis.com/v0/b/thaileagueshop-3eb6f.appspot.com/o/MThome.jpeg?alt=media&token=44d2c75e-bdab-454c-b3d8-51eaa257dd9f",
        qty: 1),
  ];

  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[50],
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(30)),
          child: TextField(
            // onChanged: (value) {
            //  _searchtitle = _products.where((element) => element.con).cast<String>().toList();
            //  },
            controller: _search,
            decoration: InputDecoration(
                border: InputBorder.none,
                errorBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                contentPadding: EdgeInsets.all(15),
                hintText: 'Search'),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart'),
          )
        ],
      ),
      body: /*GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: _products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            childAspectRatio: 0.8),
        itemBuilder: (context, index) {
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            return Card(
                child: Column(children: <Widget>[
              Image.network(
                _products[index].imgUrl,
                height: 120,
                width: 120,
              ),
              Text(
                _products[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(_products[index].price.toString() + ' Bath'),
              MaterialButton(
                  child: Text("Add"),
                  onPressed: () => model.addProduct(_products[index]))
            ]));
          });
        },
      ),*/

          ListView.builder(
        itemExtent: 80,
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return ScopedModelDescendant<CartModel>(
              builder: (context, child, model) {
            return ListTile(
                leading: Image.network(_products[index].imgUrl),
                title: Text(_products[index].title),
                subtitle: Text("\$" + _products[index].price.toString()),
                trailing: MaterialButton(
                    child: Text("Add"),
                    onPressed: () => model.addProduct(_products[index])));
          });
        },
      ),
    );
  }
}
