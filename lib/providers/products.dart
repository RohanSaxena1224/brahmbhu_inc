import 'package:flutter/material.dart';

import 'product.dart';

class Products with ChangeNotifier{
  List<Product> _items = [
    Product(
        id: 'p1',
        title: 'Grey Hoodie',
        description: 'Talk bare shit on this ting ahlie',
        price: 29.99,
        productImage: 'images/hoodie.jpg'
    ),
    Product(
        id: 'p2',
        title: 'Plate',
        description: 'Talk bare shit on this ting ahlie',
        price: 35.55,
        productImage: 'images/palte.jpg'
    ),
    Product(
        id: 'p3',
        title: 'Pants',
        description: 'Talk bare shit on this ting ahlie',
        price: 50.00,
        productImage: 'images/pant.jpg'
    ),
    Product(
        id: 'p4',
        title: 'Shoes',
        description: 'Talk bare shit on this ting ahlie',
        price: 19.99,
        productImage: 'images/shoe.jpg'
    ),
    Product(
        id: 'p5',
        title: 'Watch',
        description: 'Talk bare shit on this ting ahlie',
        price: 45.99,
        productImage: 'images/watch.jpg'
    ),
  ];

  List<Product> get items {
    return[..._items];
  }

  List<Product> get favoriteItems{
    return _items.where((prodItem) => prodItem.isFavorite).toList();
  }

  Product findById(String id){
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct(){
    notifyListeners();
  }
}