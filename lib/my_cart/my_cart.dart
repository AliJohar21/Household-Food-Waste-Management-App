import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  const ShoppingCartPage({super.key});

  @override
  ShoppingCartPageState createState() => ShoppingCartPageState();
}

class ShoppingCartPageState extends State<ShoppingCartPage> {
  int chickenCount = 1;
  int breadCount = 2;

  void incrementChicken() {
    setState(() {
      chickenCount++;
    });
  }

  void decrementChicken() {
    setState(() {
      if (chickenCount > 1) {
        chickenCount--;
      }
    });
  }

  void incrementBread() {
    setState(() {
      breadCount++;
    });
  }

  void decrementBread() {
    setState(() {
      if (breadCount > 1) {
        breadCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Cart'),
          centerTitle: true,
          actions: <Widget>[],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16.0),
          children: <Widget>[
            CartItemWidget(
              imagePath: 'assets/chicken_icon.png',
              itemName: 'Chicken',
              itemWeight: '500g',
              itemDate: '13/2/24',
              quantity: chickenCount,
              onIncrement:
                  incrementChicken, // TODO: make it so it works on data inputted by the user, not only chicken and bread
              onDecrement: decrementChicken,
            ),
            SizedBox(height: 8),
            CartItemWidget(
              imagePath: 'assets/bread.png',
              itemName: 'Bread',
              itemWeight: '130g',
              itemDate: '24/2/24',
              quantity: breadCount,
              onIncrement: incrementBread,
              onDecrement: decrementBread,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextButton(
                onPressed: (// TODO: remove added items
                    ) {},
                child: Text(
                  'Add items',
                  style: TextStyle(color: Colors.green),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.green, width: 3),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0, top: 16.0),
              child: TextButton(
                onPressed: (// TODO: remove added items
                    ) {},
                child: Text(
                  'Clear all items',
                  style: TextStyle(color: Colors.red),
                ),
                style: TextButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: Colors.red, width: 3),
                  padding: EdgeInsets.symmetric(vertical: 12),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: Padding(
                padding: const EdgeInsets.symmetric(),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Center the buttons
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Remind me',
                            style:
                                TextStyle(color: Colors.purple, fontSize: 18),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(30), // Rounded corners
                              side: BorderSide(color: Colors.purple),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            'Donate',
                            style:
                                TextStyle(color: Colors.purple, fontSize: 18),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.0, vertical: 16.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                              side: BorderSide(color: Colors.purple),
                            ),
                          ))
                    ]))));
  }
}

class CartItemWidget extends StatelessWidget {
  final String itemName;
  final String itemWeight;
  final String itemDate;
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;
  final String imagePath;

  CartItemWidget({
    Key? key,
    required this.itemName,
    required this.imagePath,
    required this.itemWeight,
    required this.itemDate,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.purple, width: 3),
      ),
      child: IntrinsicHeight(
        child: Row(
          children: <Widget>[
            Image.asset(imagePath, width: 100, height: 100),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  itemName,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(itemWeight),
                Text(itemDate),
              ],
            ),
            Spacer(),
            Counter(
              quantity: quantity,
              onIncrement: onIncrement,
              onDecrement: onDecrement,
            ),
          ],
        ),
      ),
    );
  }
}

class Counter extends StatelessWidget {
  final int quantity;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const Counter({
    Key? key,
    required this.quantity,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: Icon(Icons.remove),
          onPressed: onDecrement,
        ),
        Text(quantity.toString()),
        IconButton(
          icon: Icon(Icons.add),
          onPressed: onIncrement,
        ),
      ],
    );
  }
}
