import 'package:flutter/material.dart';

class EditProductScreen extends StatefulWidget {
  static const routeName = '/edit-product';

  @override
  _EditProductScreenState createState() => _EditProductScreenState();
}

class _EditProductScreenState extends State<EditProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Edit Product")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          child: ListView(children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                labelText: "Title",
                //try out a hint text
              ),
              textInputAction: TextInputAction.next,
            )
          ]),
        ),
      ),
    );
  }
}
