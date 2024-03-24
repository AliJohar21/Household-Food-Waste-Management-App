import 'package:flutter/material.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Define the list of fixed donation amounts
    final List<int> donationAmounts = [5, 10, 20, 20, 100];

    // Define the selected donation amount
    int selectedAmount = donationAmounts[0]; // Default to the first amount

    // Controller for card number field
    final TextEditingController cardNumberController = TextEditingController();
    // Controller for name on card field
    final TextEditingController nameOnCardController = TextEditingController();
    // Controller for exp date field
    final TextEditingController expDateController = TextEditingController();
    // Controller for CVV field
    final TextEditingController cvvController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Donate Money'), // Title on the app bar
        centerTitle: true, // Center the title
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 0.0, // Add space between the image and the text field
            ),
            const Image(
              image: AssetImage('assets/credit_card_icon.png'),
              width: 400, // Set the width of the image
              height: 400, // Set the height of the image
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: nameOnCardController,
                decoration: InputDecoration(
                  labelText: 'Name on card',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                controller: cardNumberController,
                decoration: InputDecoration(
                  labelText: 'Card number',
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: expDateController,
                      decoration: InputDecoration(
                        labelText: 'Exp date (MM/YY)',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextField(
                      controller: cvvController,
                      decoration: InputDecoration(
                        labelText: 'CVV',
                      ),
                      keyboardType: TextInputType.number,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
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
            const SizedBox(height: 30),
            // Donate button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle donation
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue, // Text color
                  elevation: 5, // Elevation
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(200), // Increased border radius
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 20, horizontal: 30), // Increased padding
                ),
                child: const Text(
                  'Donate',
                  style: TextStyle(fontSize: 20), // Increased font size
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
