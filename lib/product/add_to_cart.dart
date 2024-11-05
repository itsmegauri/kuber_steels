import 'package:flutter/material.dart';
import '../theme/app_theme.dart';
import '../components/header.dart';
import '../whatsapp/whatsapp_integration.dart'; // Import WhatsAppIntegrationScreen

class AddToCartScreen extends StatelessWidget {
  // Sample list of items in the cart
  final List<Map<String, dynamic>> cartItems = [
    {'name': 'CC', 'quantity': 2, 'price': 500},
    {'name': 'GC', 'quantity': 1, 'price': 300},
    {'name': 'Pipes', 'quantity': 5, 'price': 1500},
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text(
          'KUBER STEEL INDUSTRIES - Cart',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Open drawer or other actions
          },
        ),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cart Items',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (context, index) {
                  final item = cartItems[index];
                  return Card(
                    color: AppColors.cardColor,
                    margin: EdgeInsets.only(bottom: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['name'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Price: ₹${item['price']}',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(
                                'Quantity: ${item['quantity']}',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: Icon(Icons.remove, color: Colors.red),
                                onPressed: () {
                                  // Decrease quantity action
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.add, color: Colors.green),
                                onPressed: () {
                                  // Increase quantity action
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.delete, color: Colors.red),
                                onPressed: () {
                                  // Remove item from cart action
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            _buildTotalSection(),
            SizedBox(height: 10),
            _buildCheckoutButton(context),
          ],
        ),
      ),
    );
  }

  // Widget for displaying total amount
  Widget _buildTotalSection() {
    double total = cartItems.fold(0, (sum, item) => sum + (item['price'] * item['quantity']));
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Text(
          '₹$total',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  // Updated Checkout Button to navigate to WhatsAppIntegrationScreen
  Widget _buildCheckoutButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          // Navigate to WhatsAppIntegrationScreen on checkout
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => WhatsAppIntegrationScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryColor,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Text(
          'CHECKOUT',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
