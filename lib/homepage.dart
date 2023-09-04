import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('botton navigation '),
        backgroundColor: Colors.yellow,
      ),
      body: Container(
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellowAccent,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon:Icon(Icons.home),
            label:('home'),
            backgroundColor: Color.fromARGB(255, 201, 196, 196)
            ), 
               BottomNavigationBarItem(
            icon:Icon(Icons.camera),
            label:('camera'),
            backgroundColor: Color.fromARGB(255, 218, 24, 24)
            ),   BottomNavigationBarItem(
            icon:Icon(Icons.search),
            label:('search'),
            backgroundColor: Colors.blue
            ),   BottomNavigationBarItem(
            icon:Icon(Icons.person),
            label:('prifile'),
            backgroundColor: Colors.green
            ),  
        ],
        onTap: (index){
          setState(() {
            _currentIndex =index;
          });

        },
      ),
    ); 
  }
}