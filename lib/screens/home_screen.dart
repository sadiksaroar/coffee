import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
} 

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d2630),

      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                elevation: 20,
                color: Colors.white.withOpacity(0.1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 40,
                  width: 40,
                  padding: const EdgeInsets.symmetric(vertical: 10, 
                   horizontal: 10,),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      circleRow(),
                      circleRow()           
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    'assets_image/images/profile.jpg',
                    height: 40,
                    width: 40,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,),
            Text("Find  the best ",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),   
            ),
          // SizedBox(
          //   height: 5,),
            Text("Coffee for you ",
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),   
            ),
          SizedBox(
            height: 25,),
          Container(
            height: 45,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white.withOpacity(0.1),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.coffee,
                color: Colors.white.withOpacity(0.3),
                 ),
                border: InputBorder.none,
                hintText: "Find Your Cofee...",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.3),
                  fontSize: 12,
                )
              ),
            ),
          ),
          SizedBox(height: 25,),
          SizedBox(height: 30,

          child: ListView.builder(
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index){
              return GestureDetector(

              );
            }),
          )
        
        ],
      ),
      ),
    );
  }
  Widget circleRow(){
    return Row(
      children: [
        circleIcon(),
        circleIcon(),
      ],
    );
  }
  Widget circleIcon(){
    return Icon(Icons.circle,
    color: Colors.white.withOpacity(0.5),
    size: 10,
    );
  }
}