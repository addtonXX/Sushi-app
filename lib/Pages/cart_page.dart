import 'package:flutter/material.dart';
import 'package:my_app/Pages/food_details_page.dart';
import 'package:my_app/theme/colors.dart';
import 'package:provider/provider.dart';

import '../models/food.dart';
import '../models/shop.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});
  // remove from cart
  void removeFromCart() {}

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text("My Cart"),
          backgroundColor: primaryColor,
        ),
        body: ListView.builder(
          itemCount: value.cart.length,
          itemBuilder: (context, index) {
            // get food from cart
            final Food food = value.cart[index];
            // get food name
            final String foodName = food.name;

            // get food price
            final String foodPrice = food.price;

            // return list tile
            
            return ListTile(
              title: Text(foodName),
              subtitle: Text(foodPrice),
              trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    removeFromCart;
                  }),
            );
          },
        ),
      ),
    );
  }
}
