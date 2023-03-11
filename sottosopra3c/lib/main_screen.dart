import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:sottosopra3c/account_screen.dart';
import 'package:sottosopra3c/favorite_screen.dart';
import 'package:sottosopra3c/home_screen.dart';
import 'package:sottosopra3c/settings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages = [
    HomeScreen(),
    FavoriteScreen(),
    Settings(),
  ];
  void chooseIndex(int index){
    setState(() {
      selectedIndex = index;
    });
  }


  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: BottomNavigationBar(
         currentIndex: selectedIndex,
         onTap: chooseIndex,
          items: [
            BottomNavigationBarItem(icon:Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon:Icon(Icons.favorite),label: "Preferiti"),
            BottomNavigationBarItem(icon:Icon(Icons.settings),label: "Impostazioni"),
          ]
        ),
        body: pages.elementAt(selectedIndex),
      drawer:Drawer(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black) ,
        //title: Center(child: Image.asset('lib/assets/logo.png', width: 200,)),
        backgroundColor: Colors.white,
        actions: [
          SizedBox(width: 50,),
        ],
      ),
    );
  }
}
