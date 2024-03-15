import 'package:flutter/material.dart';
import 'package:phase_2_implementation/sign_up/sign_up.dart';
import 'package:phase_2_implementation/log_in/log_in.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 100),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Welcome',
                style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 150),
            Center(
              child: Image.asset(
                  'assets/HomePage1.png'), // Replace with your asset image path
            ),
            const SizedBox(height: 100),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'ABOUT',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Our aim is to reduce food waste, and ensure that food is either consumed in the right way or donated to competent authorities.',
              style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
            ),
            const SizedBox(height: 40),
            Row(
              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ));
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.purple, // Button text color
                    ),
                    child: const Text('Sign Up'),
                  ),
                ),
                const SizedBox(width: 20), // Spacing between the buttons
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      //Navigate to login screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const LogIn()),
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.purple,
                      side: const BorderSide(
                          color: Colors.purple), // Border color
                    ),
                    child: const Text('Login'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        backgroundColor: Colors.purple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
      ),
    );
  }
}
