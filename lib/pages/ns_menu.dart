/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viggly_one/models/restaurant.dart';
import 'package:viggly_one/models/food.dart';
import 'package:viggly_one/pages/foodInfo/eggFriedRice.dart';
import 'package:viggly_one/pages/foodInfo/shawarma.dart';
import 'package:viggly_one/pages/foodInfo/bhelPuri.dart';
import 'package:viggly_one/pages/foodInfo/chickenBiriyani.dart';
import 'package:viggly_one/pages/foodInfo/chickenWrap.dart';
import 'package:viggly_one/pages/foodInfo/whitePasta.dart';

class Restaurant_1 extends StatelessWidget {
  final List<Food> foodMenu = Restaurant.getlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAZEBO C1'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        // Different functionality based on button pressed
                        switch (index) {
                          case 0:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Shawarma()),
                            );
                            break;
                          case 1:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => EggFriedRice()),
                            );
                            break;
                          case 2:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChickenBiriyani()),
                            );
                            break;
                          case 3:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ChickenWrap()),
                            );
                            break;
                          case 4:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => WhitePasta()),
                            );
                            break;
                          case 5:
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BhelPuri()),
                            );
                            break;
                          default:
                            // Default case
                            break;
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            foodMenu[index].imagePath,
                            height: 80, // Adjust the height as needed
                          ),
                          SizedBox(height: 8),
                          Text(
                            foodMenu[index].name,
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Price: Rs.${foodMenu[index].price}',
                            style: TextStyle(fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/
/*
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viggly_one/models/restaurant.dart';
import 'package:viggly_one/models/food.dart';

class Restaurant_1 extends StatelessWidget {
  final List<Food> foodMenu = Restaurant.getlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAZEBO C1'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        // Print a message indicating the order is in the cart
                        final snackBar = SnackBar(
                          content: Text('${foodMenu[index].name} added to cart!'),
                          duration: Duration(seconds: 2), // Set duration to 2 seconds
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  foodMenu[index].imagePath,
                                  height: 80, // Adjust the height as needed
                                ),
                                SizedBox(height: 8),
                                Text(
                                  foodMenu[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 24, color: Colors.black),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Price: Rs.${foodMenu[index].price} Qty: ${foodMenu[index].qty}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
/*import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viggly_one/models/restaurant.dart';
import 'package:viggly_one/models/food.dart';

class Restaurant_1 extends StatelessWidget {
  final List<Food> foodMenu = Restaurant.getlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAZEBO C1'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        // Increment quantity of the item
                        foodMenu[index].qty++;
                        
                        // Print a message indicating the order is in the cart
                        final snackBar = SnackBar(
                          content: Text('${foodMenu[index].name} added to cart!'),
                          duration: Duration(seconds: 2), // Set duration to 2 seconds
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  foodMenu[index].imagePath,
                                  height: 80, // Adjust the height as needed
                                ),
                                SizedBox(height: 8),
                                Text(
                                  foodMenu[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 24, color: Colors.black),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Price: Rs.${foodMenu[index].price} Qty: ${foodMenu[index].qty}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viggly_one/models/restaurant.dart';
import 'package:viggly_one/models/food.dart';
import 'package:viggly_one/models/cart_item.dart';
import 'package:viggly_one/database.dart';

class Restaurant_n extends StatefulWidget {
  @override
  _Restaurant_nState createState() => _Restaurant_nState();
}
/*
class _Restaurant_1State extends State<Restaurant_1> {
  List<Food> foodMenu = Restaurant.getlist();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GAZEBO C1'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        // Increment quantity of the item
                        setState(() {
                          foodMenu[index].qty++;
                        });
                        // Print a message indicating the order is in the cart
                        final snackBar = SnackBar(
                          content: Text('${foodMenu[index].name} added to cart!'),
                          duration: Duration(seconds: 2), // Set duration to 2 seconds
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  foodMenu[index].imagePath,
                                  height: 80, // Adjust the height as needed
                                ),
                                SizedBox(height: 8),
                                Text(
                                  foodMenu[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 24, color: Colors.black),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Price: Rs.${foodMenu[index].price} Qty: ${foodMenu[index].qty}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/

class _Restaurant_nState extends State<Restaurant_n> {
  DBHelper dbHelper = DBHelper();
  List<Food> foodMenu = Restaurant.getlist();
  double an=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NORTHSQUARE'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: foodMenu.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    height: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        // Increment quantity of the item
                        setState(() {
                          foodMenu[index].qty++;
                          an+=foodMenu[index].price;
                        });

                        // Insert the item into the cart
                        dbHelper.insert(Cart(
                          productName: foodMenu[index].name,
                          initialPrice: foodMenu[index].price,
                          productPrice: foodMenu[index].price * foodMenu[index].qty,
                          quantity: foodMenu[index].qty,
                        ));

                        // Show a snack bar to indicate the item has been added to the cart
                        final snackBar = SnackBar(
                          content: Text('Bill Amount: ${an}'),
                          duration: Duration(seconds: 1),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                  foodMenu[index].imagePath,
                                  height: 80,
                                ),
                                SizedBox(height: 8),
                                Text(
                                  foodMenu[index].name,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 24, color: Colors.black),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Total Price: Rs.${foodMenu[index].price * foodMenu[index].qty}   Qty: ${foodMenu[index].qty}      Price: Rs.${foodMenu[index].price}',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(fontSize: 15, color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove),
                                color: Colors.black,
                                iconSize: 40,
                                onPressed: () {
                                  // Decrement quantity of the item if it's greater than 0
                                  setState(() {
                                    if (foodMenu[index].qty > 0) {
                                      foodMenu[index].qty--;
                                      an-=foodMenu[index].price;
                                    }
                                  });
                                  final snackBar = SnackBar(
                          content: Text('Bill Amount: ${an}'),
                          duration: Duration(seconds: 1),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                                },
                              ),
                              Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.black,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}