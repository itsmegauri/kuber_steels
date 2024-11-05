import 'package:flutter/material.dart';
import 'package:kuber_steels/product/product_list.dart';
import 'home_screen.dart';
import 'contact_us.dart';
import '../product/product_list.dart';

class SupportScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {
                print("Navigating to HomeScreen");
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                      (Route<dynamic> route) => false,
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.storage),
              title: Text("Products"),
              onTap: () {
                print("Navigating to ProductList");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductList(),
                  ),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.headset_mic),
              title: Text("Contact Us"),
              onTap: () {
                print("Navigating to ContactUsPage");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactUsPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
