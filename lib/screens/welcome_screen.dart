import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app_ui_2/screens/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
          opacity: 0.7,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 65, horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Enjoy",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5),
                ),
                SizedBox(height: 12),
                Text(
                  "The world!",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5),
                ),
                SizedBox(height: 12),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit,"
                  " sed do eiusmod tempor incididunt ut labore et dolore"
                  " magna aliqua.",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                      fontSize: 16,
                      letterSpacing: 1.2),
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Ink(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.arrow_forward_ios,
                        color: Colors.black54, size: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
