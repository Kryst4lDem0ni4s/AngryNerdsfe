import 'package:flutter/material.dart';
import 'package:myapp/pages/chatbot_page.dart';
import 'package:myapp/pages/orders_page.dart';
import 'package:myapp/pages/retail_shops_page.dart';
import 'package:myapp/pages/transportation_page.dart';
import 'inventory.dart';
import 'cold_storage.dart';
import 'community_forum.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _navigateToFeature(BuildContext context, String feature) {
    switch (feature) {
      case 'aggregation':
        // Navigate to aggregation page
        break;
      case 'retail_shops':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const RetailShopsPage()),
        );
        break;
      case 'cold_storage':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ColdStoragePage()),
        );
        break;
      case 'community_forum':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CommunityForumPage()),
        );
        break;
      case 'transport':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TransportationPage()),
        );
        break;
      case 'inventory':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const InventoryPage()),
        );
        break;
      case 'orders':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OrdersPage()),
        );
        break;
      case 'chatbot':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const ChatbotPage()),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Row(
          children: [
            CircleAvatar(
              // Farmer profile image
              radius: 18,
              backgroundImage: AssetImage('assets/farmer_profile.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                Text(
                  'Sunil Sharma (Farmer)',
                  style: TextStyle(fontSize: 12, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.chat_bubble_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(vertical: 0),
                ),
              ),
              SizedBox(height: 16),
              
              // Kisan Rath Banner
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '"Kisan Rath"',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800],
                            ),
                          ),
                          Text(
                            'Mobile App by Agriculture Minister',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue[800],
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'facilitate transportation of foodgrains and perishables',
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/farmer_icon.png',
                      height: 60,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16),
              
              // Pagination Dots
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                  SizedBox(width: 4),
                  Container(
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              
              // Our Services
              Text(
                'Our Services',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              
              // First Row of Services
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildServiceItem(
                    context,
                    'Aggregation',
                    Icons.people,
                    Colors.blue,
                    'aggregation',
                  ),
                  _buildServiceItem(
                    context,
                    'Retail Shops',
                    Icons.store,
                    Colors.blue,
                    'retail_shops',
                  ),
                  _buildServiceItem(
                    context,
                    'Cold Storages',
                    Icons.ac_unit,
                    Colors.blue,
                    'cold_storage',
                  ),
                  _buildServiceItem(
                    context,
                    'Community Forum',
                    Icons.forum,
                    Colors.blue,
                    'community_forum',
                  ),
                ],
              ),
              SizedBox(height: 16),
              
              // Second Row of Services
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildServiceItem(
                    context,
                    'Transport',
                    Icons.local_shipping,
                    Colors.blue,
                    'transport',
                  ),
                  _buildServiceItem(
                    context,
                    'Inventory',
                    Icons.inventory,
                    Colors.blue,
                    'inventory',
                  ),
                  _buildServiceItem(
                    context,
                    'Orders',
                    Icons.receipt,
                    Colors.blue,
                    'orders',
                  ),
                  _buildServiceItem(
                    context,
                    'Chatbot',
                    Icons.chat,
                    Colors.blue,
                    'chatbot',
                  ),
                ],
              ),
              SizedBox(height: 24),
              
              // Market Trends
              Text(
                'Market Trends',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 12),
              
              // Market Trends Grid
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: [
                  _buildMarketTrendItem('Wheat', '-4.7%', Colors.red),
                  _buildMarketTrendItem('Tomato', '+22.4%', Colors.green),
                  _buildMarketTrendItem('Barley', '-7.1%', Colors.red),
                  _buildMarketTrendItem('Onion', '+22.2%', Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mic), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
        ],
        onTap: (index) {
          // Handle navigation based on index
        },
      ),
    );
  }

  Widget _buildServiceItem(BuildContext context, String title, IconData icon, Color color, String route) {
    return GestureDetector(
      onTap: () => _navigateToFeature(context, route),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
          ),
          SizedBox(height: 4),
          Text(
            title,
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildMarketTrendItem(String crop, String percentage, Color color) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            crop,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            percentage,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
