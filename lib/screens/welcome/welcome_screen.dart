import 'package:wrist_minder_pro/constants.dart';
import 'package:wrist_minder_pro/screens/auth/sign_in_screen.dart';
import 'package:wrist_minder_pro/screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wrist Minder Pro"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset("assets/images/facebook_logo.webp"),
                // Spacer(),
                SizedBox(height: 50),
                const Text("Hello world"),

                // Image.asset("assets/images/facebook_logo.webp"),
                Spacer(),
                // As you can see we need more paddind on our btn
                //Sign Up Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SignUpScreen(),
                      ),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFF6CD8D1),
                    ),
                    child: Text("Sign Up"),
                  ),
                ),
                //Sign In Button inside
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: defaultPadding),
                  child: SizedBox(
                    width: double.infinity,
                    //Sign In Button
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignInScreen(),
                          )),
                      style: TextButton.styleFrom(
                        // backgroundColor: Color(0xFF6CD8D1),
                        elevation: 0,
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(color: Color(0xFF6CD8D1)),
                        ),
                      ),
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: defaultPadding),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
