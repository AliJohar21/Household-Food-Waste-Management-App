import 'package:flutter/material.dart';
import 'package:phase_2_implementation/my_cart/my_cart.dart';
import 'package:phase_2_implementation/payment/payment.dart';

class Donate extends StatelessWidget {
  const Donate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton.icon(
              icon: const Icon(Icons.fastfood, color: Colors.deepPurple),
              label: const Text('Food'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShoppingCartPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.green, // Text color
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                elevation: 4,
              ),
            ),
            const SizedBox(width: 50), // Spacing between buttons
            ElevatedButton.icon(
              icon: const Icon(Icons.attach_money, color: Colors.deepPurple),
              label: const Text('Money'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PaymentMethodPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue, // Text color
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                elevation: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
