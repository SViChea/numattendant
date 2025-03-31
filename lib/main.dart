import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

// The root of the application
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AccountScreen(), // Set AccountScreen as the home screen
    );
  }
}

class HomeScreen extends StatelessWidget {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF08252E),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Logo copy.png', // Replace with your logo path
              height: 40.0,
              width: 40.0,
            ), // Replace with your emblem
            Container(
              child: Row(
                children: [
                  Icon(Icons.notifications, size: 30, color: Colors.white),
                  Icon(Icons.settings, size: 30, color: Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF08252E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              height:
                  MediaQuery.of(context).size.height *
                  0.75, // 80% screen height
              width: MediaQuery.of(context).size.width * 1, // 80% screen width
              decoration: BoxDecoration(
                color: Color(0xFFF1F2F7), // Custom color
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft: Radius.circular(35),
                ), // Rounded corners
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        textDirection: TextDirection.ltr,
                        children: [
                          Text(
                            "Rank",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                height: 60,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F2F7),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Column(
                                  textDirection: TextDirection.ltr,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "In Class",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "4",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                height: 60,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F2F7),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Column(
                                  textDirection: TextDirection.ltr,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "In Generation",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "56",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(height: 15),
                    Container(
                      padding: EdgeInsets.all(15),
                      width: MediaQuery.of(context).size.width * 1,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Attendance",
                            style: TextStyle(
                              fontFamily: "Montserrat",
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                height: 60,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Color(0xFFF1F2F7),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Column(
                                  textDirection: TextDirection.ltr,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Attendance",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 11,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "76%",
                                      style: TextStyle(
                                        fontFamily: "Montserrat",
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                height: 60,
                                width: 170,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFBE9E8),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Column(
                                  textDirection: TextDirection.ltr,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Skips",
                                      style: TextStyle(
                                        color: Color(0xFFDA554C),
                                        fontFamily: "Montserrat",
                                        fontSize: 11,
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Text(
                                      "20 Days",
                                      style: TextStyle(
                                        color: Color(0xFFDA554C),
                                        fontFamily: "Montserrat",
                                        fontSize: 16,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          TableCalendar(
                            firstDay: DateTime(2000),
                            lastDay: DateTime(2100),
                            focusedDay: _focusedDay,
                            selectedDayPredicate: (day) {
                              return isSameDay(_selectedDay, day);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white, // Color when item is selected
          unselectedItemColor: Colors.grey, // Color when item is not selected
          backgroundColor: Color(
            0xFF08252E,
          ), // Background color of the bottom bar
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30),
              label: '',
            ),
          ],
        ),
      ),
    );
  }
}

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08252E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/profileicon.png', height: 197, width: 197),
                SizedBox(height: 18),
                Text(
                  "Username",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Position",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    );
                  },
                  child: Text('Edit'),
                ),
                SizedBox(height: 15),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                color: Color(0xFFF1F2F7),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _infoCard(Icons.email, "Email", "user@gmail.com"),
                  SizedBox(height: 15),
                  _infoCard(Icons.phone, "Phone Number", "+855 12 654 102"),
                  SizedBox(height: 15),
                  _infoCard(
                    Icons.location_on,
                    "Address",
                    "#XX, District, City, Postal Code",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color(0xFF08252E),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  // Reusable Widget for displaying user info
  Widget _infoCard(IconData icon, String title, String value) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [Icon(icon, size: 20), SizedBox(width: 10), Text(title)],
          ),
          SizedBox(height: 10),
          Text(value),
        ],
      ),
    );
  }
}

// Second Page (Edit Page)
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF08252E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/profileicon.png', height: 197, width: 197),
                SizedBox(height: 10),
                Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AccountScreen()),
                    );
                  },
                  child: Text('Done'),
                ),
                SizedBox(height: 15),
              ],
            ),
            Container(
              padding: EdgeInsets.all(15),
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                color: Color(0xFFF1F2F7),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    _infoCard(
                      Icons.account_circle_sharp,
                      "First Name",
                      "Sovichea",
                    ),
                    SizedBox(height: 15),
                    _infoCard(Icons.account_circle_sharp, "Last Name", "Sok"),
                    SizedBox(height: 15),
                    _infoCard(Icons.work, "Occupation", "ICT Assistant"),
                    SizedBox(height: 15),
                    _infoCard(Icons.email, "Email", "user@gmail.com"),
                    SizedBox(height: 15),
                    _infoCard(Icons.phone, "Phone Number", "+855 12 654 102"),
                    SizedBox(height: 15),
                    _infoCard(
                      Icons.location_on,
                      "Address",
                      "#XX, District, City, Postal Code",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(top: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: Color(0xFF08252E),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.storefront, size: 30),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle, size: 30),
              label: '',
            ),
          ],
        ),
      ),
    );
  }

  Widget _infoCard(IconData icon, String title, String value) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [Icon(icon, size: 20), SizedBox(width: 10), Text(title)],
          ),
          SizedBox(height: 10),
          Text(value),
        ],
      ),
    );
  }
}
