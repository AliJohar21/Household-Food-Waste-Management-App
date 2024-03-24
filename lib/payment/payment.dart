import 'package:flutter/material.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Define the list of fixed donation amounts
    final List<int> donationAmounts = [5, 10, 20, 50, 100];

    // Define the selected donation amount
    int selectedAmount = donationAmounts[0]; // Default to the first amount

    return Scaffold(
      appBar: AppBar(
        title: const Text('Donate Money'), // Title on the app bar
        centerTitle: true, // Center the title
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const Stack(
              children: [
                Image(
                  image: AssetImage('assets/credit_card_icon.png'),
                  width: 400, // Set the width of the image
                  height: 400, // Set the height of the image
                ),
                Positioned(
                  bottom: 16.0,
                  right: 16.0,
                  child: Text(
                    'MM/YY', // Display the date here
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Name on card',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Card number',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Exp date',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'CVV',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            // Text widget for indicating to select the donation amount
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Select amount of donation',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            // Dropdown button for selecting the donation amount
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: DropdownButton<int>(
                value: selectedAmount,
                onChanged: (int? newValue) {
                  if (newValue != null) {
                    // Update the selected donation amount
                    selectedAmount = newValue;
                  }
                },
                items: donationAmounts.map((int amount) {
                  return DropdownMenuItem<int>(
                    value: amount,
                    child:
                        Text('$amount Dirhams'), // Display amount with Dirhams
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
