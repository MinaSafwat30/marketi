import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:marketi/Freatures/Home/home_view.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> Pages = [
    HomeView(), 
    Center(child: Text('Cart')), 
    Center(child: Text('Fav')),
    Center(child: Text('Menu'))];
  int idx = 0 ;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          
          child: Material(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            elevation: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: Container(
                width: double.infinity,
                height: 56,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: BottomNavigationBar(
                  currentIndex: idx,
                  onTap: (index){
                    idx = index ;
                    setState(() {});
                  },
                  selectedItemColor: Colors.blue,
                  selectedIconTheme: IconThemeData(color: Colors.blue),
                  iconSize: 20,
                  items: [
                    BottomNavigationBarItem(
                      activeIcon: SvgPicture.asset(
                        'assets/icon/home_icon.svg',
                        height: 18,
                        width: 18,
                        color: Colors.blue,
                      ),
                      icon: SvgPicture.asset(
                        'assets/icon/home_icon.svg',
                        height: 18,
                        width: 18,
                      ),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/cart_icon.svg',
                        height: 18,
                        width: 18,
                      ),
                      label: 'Cart',
                      activeIcon: SvgPicture.asset(
                        'assets/icon/cart_icon.svg',
                        height: 18,
                        width: 18,
                        color: Colors.blue,
                      ),
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset(
                        'assets/icon/heart_icon.svg',
                        height: 18,
                        width: 18,
                      ),
                      activeIcon: SvgPicture.asset(
                        'assets/icon/heart_icon.svg',
                        height: 18,
                        width: 18,
                        color: Colors.blue,
                      ),
                      label: 'Favorites',
                    ),
                    BottomNavigationBarItem(
                      icon: SvgPicture.asset('assets/icon/menu_icon.svg'),
                      label: 'Menu',
                      activeIcon: SvgPicture.asset(
                        'assets/icon/menu_icon.svg',
                        height: 18,
                        width: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              
              ),
            ),
          ),
        ),
        
        body: Pages[idx],
      ),
    );
  }
}
