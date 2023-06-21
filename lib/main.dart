import 'package:flutter/material.dart';
import 'package:flutter_bluetooth_serial_example/home.dart';
import 'package:google_fonts/google_fonts.dart';

import 'command_selection.dart';

void main() => runApp(new ExampleApplication());

class ExampleApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
      theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: GoogleFonts.bebasNeue().fontFamily),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

int _selectedIndex = 0;
List<Widget> _widgetOptions = <Widget>[Home(), CommandSelection()];

class _MyWidgetState extends State<MyWidget> {
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text(""),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.menu),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.person),
            ),
          ],
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
        ),
        //botom nav bar
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.black,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: GestureDetector(child: Icon(Icons.home)), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.edit), label: ''),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),

        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
    );
  }
}
