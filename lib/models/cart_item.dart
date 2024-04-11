import 'package:flutter/material.dart';
import 'package:viggly_one/models/food.dart';
import 'package:viggly_one/pages/c1_menu.dart';
import 'package:viggly_one/pages/c2_menu.dart';
import 'package:viggly_one/pages/c3_menu.dart';
import 'package:viggly_one/pages/c4_menu.dart';
import 'package:viggly_one/pages/gk_menu.dart';
import 'package:viggly_one/pages/ns_menu.dart';

class CartPage extends StatelessWidget {
  final List<Food> cartItems;

  CartPage({this.cartItems = const []});

  @override
  Widget build(BuildContext context) {
    double totalAmount = 0;

    // Calculate total amount based on quantity and price of items in the cart
    for (var item in cartItems) {
      totalAmount += item.price * item.qty;
    }
    totalAmount = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Items in Cart:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  Food item = cartItems[index];
                  return ListTile(
                    leading: item.imagePath != null
                        ? Image.network(
                            item.imagePath!,
                            width: 50,
                            height: 50,
                          )
                        : SizedBox.shrink(),
                    title: Text(
                      item.name,
                      style: TextStyle(color: Colors.black),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Price: Rs. ${item.price}',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Quantity: ${item.qty}',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          'Total: Rs. ${item.price * item.qty}',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              
              'Total Amount: Rs. $totalAmount',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
class Cart {
  final String? productName;
  final double? initialPrice;
  final double? productPrice;
  final int? quantity;

  Cart(
      {required this.productName,
      required this.initialPrice,
      required this.productPrice,
      required this.quantity});
  Cart.fromMap(Map<dynamic, dynamic> res)
      : productName = res['productName'],
        initialPrice = res['initialPrice'],
        productPrice = res['productPrice'],
        quantity = res['quantity'];

  Map<String, Object?> toMap() {
    return {
      'productName': productName,
      'initialPrice': initialPrice,
      'productPrice': productPrice,
      'quantity': quantity,
    };
  }
}


class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Add your button click functionality here
          },
          child: Text('Gpay'),
        ),
      ),
    );
  }
}

/*import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Select Payment Method',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Handle Google Pay button onPressed event
                // Implement your logic for Google Pay integration here
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Button background color
                onPrimary: Colors.white, // Text color
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/gpay_logo.png', // Assuming you have Google Pay logo image asset
                      width: 30,
                      height: 30,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Google Pay',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/