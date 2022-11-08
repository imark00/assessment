import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'log_in_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).viewPadding.top),
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.asset(
                'assets/images/image3.png',
                fit: BoxFit.fitHeight,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Sign up',
              style: TextStyle(
                letterSpacing: 0.6,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xff11233e),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.phone_outlined,
                  color: Color(0xff959ca9),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(
                  Icons.email_outlined,
                  color: Color(0xff959ca9),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                      contentPadding: EdgeInsets.zero,
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Icon(
                  Icons.lock_outline,
                  color: Color(0xff959ca9),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      suffixIcon: const Icon(
                        Icons.visibility_off_outlined,
                        color: Color(0xff959ca9),
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 15)),
                  backgroundColor: MaterialStateProperty.all(
                    const Color(0xff0165ff),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                ),
                child: const Text(
                  'Continue',
                  style: TextStyle(letterSpacing: 1),
                ),
              ),
            ),
            const SizedBox(height: 50),
            Center(
              child: InkWell(
                onTap: () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LogInScreen(),
                  ),
                ),
                child: RichText(
                  text: const TextSpan(
                    children: [
                      TextSpan(
                        text: 'Already have an account? ',
                        style: TextStyle(
                          color: Color(0xff959ca9),
                          fontSize: 15,
                        ),
                      ),
                      TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
