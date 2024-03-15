import 'package:flutter/material.dart';
import 'package:phase_2_implementation/forget_password/forget_password.dart';
import 'package:phase_2_implementation/sign_up/sign_up.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width,
          maxHeight: MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top -
              MediaQuery.of(context).padding.bottom -
              kToolbarHeight,
        ),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/b_g.png'), // Replace with your actual asset path
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const Text(
                    'FOODMINDER',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text(
                    'HouseHold waste management app',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                    ),
                  ),
                  const SizedBox(height: 48.0),
                  const TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email or Phone',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  ElevatedButton(
                    onPressed: () {
                      // Implement login functionality
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.deepPurple, // text color
                    ),
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 25.0),
                  TextButton(
                    onPressed: () {
                      // Implement UAE PASS login functionality
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.deepPurple, // text color
                    ),
                    child: const Text('UAE PASS'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const ResetPassword(),
                      ));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black54, // text color
                    ),
                    child: const Text('forgot password?'),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const SignUp(),
                      ));
                    },
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black54, // text color
                    ),
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
