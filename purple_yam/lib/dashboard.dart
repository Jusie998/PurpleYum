import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'notifications.dart';
import 'cart.dart';
// import 'package:flutter_gen/gen_l10n/gallery_localizations.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key ? key}): super(key: key);
  // final BottomNavigationDemo type;

@override
State<Dashboard> createState() => _Dashboard();
}

@override
class _Dashboard extends State<Dashboard> {
int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white);
  static const List<Widget> _pages = <Widget>[
      Text(
        'Home',
        style: optionStyle,
      ),
      Text(
        'Chat',
        style: optionStyle,
      ),
      Text(
        'Profile',
        style: optionStyle,
      ),
    ];

  void _onItemTapped(int index) {
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      automaticallyImplyLeading: true,
      title: Text('Dashboard'),
  actions: [
     IconButton(
      icon: const Icon(
        Icons.notifications
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
          builder: ((context) => Notif())));
      },
    ),
    IconButton(
      icon: const Icon(
        Icons.shopping_cart
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
          builder: ((context) => Cart())));
      },
    )
  ],
    ),
    body: Container (
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [Colors.white, Colors.deepPurple]
          )
      ),
      child: Center(
      child: _pages.elementAt(_selectedIndex),
    ),
      ),
    
    // 

    bottomNavigationBar: BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color.fromARGB(255, 73, 46, 121),
      selectedItemColor: Colors.white,
      unselectedItemColor: Color.fromARGB(255, 182, 182, 182),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home),
            label: 'Home',),
        BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Message',),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',)
      ],
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      ),
    );
  }
  

  

  // String _title(BuildContext context) {
  //   final localizations = GalleryLocalizations.of(context)!;
  //   switch (widget.type) {
  //     case BottomNavigationDemoType.withLabels:
  //       return localizations.demoBottomNavigationPersistentLabels;
  //     case BottomNavigationDemoType.withoutLabels:
  //       return localizations.demoBottomNavigationPersistentLabels;
  //   }
  // }

}
