import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './screens/products_details_screen.dart';
import './screens/products_overview.dart';
import './providers/products.dart';
import './screens/cart_screen.dart';
import './screens/orders_screen.dart';
import './providers/orders.dart';
import './providers/cart.dart';
import './screens/user_products_screen.dart';
import './screens/edit_product_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Products()),
        ChangeNotifierProvider(create: (ctx) => Cart()),
        ChangeNotifierProvider(create: (ctx) => Orders())
      ],
      child: MaterialApp(
        title: 'Bhrambhu Inc',
        theme: ThemeData(
          primaryColorDark: Colors.lightGreen[700],
          primaryColorLight: Colors.lightGreen[100],
          primaryColor: Colors.lightGreen[500],
          accentColor: Colors.amber[500],
          dividerColor: Colors.grey[400],
          fontFamily: 'Lora',
          primaryIconTheme: IconThemeData(color: Colors.grey[900]),
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),
          CartScreen.routeName: (ctx) => CartScreen(),
          OrdersScreen.routeName: (ctx) => OrdersScreen(),
          EditProductScreen.routeName: (ctx) => EditProductScreen(),
          UserProductsScreen.routeName: (ctx)=> UserProductsScreen()
        },
      ),
    );
  }
}
