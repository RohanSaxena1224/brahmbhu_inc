import 'package:flutter/material.dart';

class UserProductItem extends StatelessWidget {
  final String title;
  final String productImage;

  UserProductItem(this.title, this.productImage);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        title: Text(title),
        leading: CircleAvatar(
          backgroundImage: AssetImage(productImage),
        ),
        trailing: Container(
          width: 100,
          child: Row(
            children: <Widget> [
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: (){},
                color:Theme.of(context).primaryColor ,
              ),
              IconButton(
                icon: Icon(Icons.delete),
                onPressed: (){},
                color: Theme.of(context).errorColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
