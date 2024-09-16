
import 'package:coffee_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;

  final List<Widget> pages = [

  const HomeScreen(),
  //  const  Center(
  //     child: Text('Home Screen',
  //     style: TextStyle(
  //       color: Colors.black,
  //     ),
  //     ),
  //   ),

  // screen -- 2
     const  Center(
      child: Text('Shop Screen',
      style: TextStyle(
        color: Colors.black,
      ),
      ),
    ),
      // screen -- 3
     const  Center(
      child: Text('Favourite Screen',
      style: TextStyle(
        color: Colors.black,
      ),
      ),
    ),
    // screen 4 
    const  Center(
      child: Text('Notification Screen',
      style: TextStyle(
        color: Colors.black,
      ),
      ),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        currentIndex: index,
        onTap: (value){
          setState(() {
            index = value;
          });
        },
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF1d2630),
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(
              Icons.home,
              color: index == 0 ? Colors.orange : Colors.grey.withOpacity(0.6),
            )),
          BottomNavigationBarItem(
            label: 'Shop',
            icon: Icon(
              Icons.shopify,
              color: index == 0 ? Colors.orange : Colors.grey.withOpacity(0.6),
            )),
          BottomNavigationBarItem(
            label: "Favorite",
            icon: Icon(
              Icons.favorite,
              color: index == 0 ? Colors.orange : Colors.grey.withOpacity(0.6),
            )),
          BottomNavigationBarItem(
            label: 'Notification',
            icon: Icon(
              Icons.notification_add,
              color: index == 0 ? Colors.orange : Colors.grey.withOpacity(0.6),
            ))
        ],
      ),
    );
  }
}