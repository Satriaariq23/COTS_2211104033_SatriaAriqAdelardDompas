import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Icon(Icons.search, color: Colors.grey),
                      SizedBox(width: 8),
                      Text('Find services, food, or places',
                          style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.teal[50], // Warna sementara
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Gopay',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Rp7.434'),
                    ],
                  ),
                ),
                SizedBox(height: 16),

                Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: [
                    _buildServiceIcon('assets/images/GoRide.png', 'GoRide'),
                    _buildServiceIcon('assets/images/GoCar.png', 'GoCar'),
                    _buildServiceIcon('assets/images/GoFood.png', 'GoFood'),
                  ],
                ),
                SizedBox(height: 16),

                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text('121 XP to your next treasure >'),
                ),
                SizedBox(height: 16),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Restos near me',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    Text('Best-seller in my area',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(height: 16),

                _buildPromoCard('assets/images/promo1.png', 'Makin Seru',
                    'Aktifkan & Sambungkan GoPay & GoPaylater di Tokopedia'),
                SizedBox(height: 16),
                _buildPromoCard('assets/images/promo2.png', 'Makin Seru',
                    'Sambungin Akun ke Tokopedia, Banyakin Untung'),
                SizedBox(height: 16),
                _buildPromoCard('assets/images/promo3.png', 'Makin Seru',
                    'Promo Belanja Online 10.10: Cashback hingga Rp100.000'),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }

  Widget _buildServiceIcon(String imagePath, String label) {
    return Column(
      children: [
        Image.asset(imagePath, height: 40),
        SizedBox(height: 4),
        Text(label),
      ],
    );
  }

  Widget _buildPromoCard(String imagePath, String title, String description) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(imagePath),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
