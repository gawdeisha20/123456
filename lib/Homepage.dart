import 'package:flutter/material.dart';



  
class Homepage extends StatelessWidget {  
  int _count = 0;  
  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('Flutter Scaffold Example'),  
      ),  
      body: Center(  
        child: Text('We have pressed the button $_count times.'),  
      ),  
      bottomNavigationBar: BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            label: Text('Home'),  
            backgroundColor: Colors.green  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
            title: Text('Search'),  
            backgroundColor: Colors.yellow  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
            title: Text('Profile'),  
            backgroundColor: Colors.blue,  
          ),  
        ],  
        type: BottomNavigationBarType.shifting,  
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.black,  
        iconSize: 40,  
        onTap: _onItemTapped,  
        elevation: 5  
      ),  
    
      floatingActionButton: FloatingActionButton(  
        onPressed: () => setState(() {  
          _count++;  
        }),  
        tooltip: 'Increment Counter',  
        child: Icon(Icons.add),  
      ),  
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,  
      drawer: Drawer(  
        elevation: 20.0,  
        child: Column(  
          children: <Widget>[  
            UserAccountsDrawerHeader(  
              accountName: Text("javatpoint"),  
              accountEmail: Text("javatpoint@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundColor: Colors.yellow,  
                child: Text("abc"),  
              ),  
            ),  
            ListTile(  
              title: new Text("Inbox"),  
              leading: new Icon(Icons.mail),  
            ),  
            Divider( height: 0.1,),  
            ListTile(  
              title: new Text("Primary"),  
              leading: new Icon(Icons.inbox),  
            ),  
            ListTile(  
              title: new Text("Social"),  
              leading: new Icon(Icons.people),  
            ),  
            ListTile(  
              title: new Text("Promotions"),  
              leading: new Icon(Icons.local_offer),  
            )  
          ],  
        ),  
      ),  
    );  
  }  
}  