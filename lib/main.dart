import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:async';

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
      home: WelcomeScreen(), // Set AccountScreen as the home screen
    );
  }
}

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLogin(); // Call the navigation function directly
  }

  void _navigateToLogin() async {
    await Future.delayed(const Duration(seconds: 5)); // Delay for 2 seconds
    if (mounted) {
      // Check if the widget is still in the tree
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF162534),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              "https://sgs.num.edu.kh/wp-content/uploads/2024/07/LOGO-NUM-1.png",
              width: 190,
              height: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 25),
            const Text(
              "WELCOME NUM Attendance",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF162534),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [],
          ),
          const SizedBox(height: 30),
          Image.network(
            "https://sgs.num.edu.kh/wp-content/uploads/2024/07/LOGO-NUM-1.png",
            width: 124,
            height: 124,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 25),
          const Text(
            "WELCOME NUM Attendance",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.99,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(80.0)),
              ),
              child: Column(
                children: <Widget>[
                  const SizedBox(height: 10),
                  const Text(
                    "LOG IN",
                    style: TextStyle(
                      color: Color(0xFF08252E),
                      fontSize: 34,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.9,
                      maxHeight: 55.0,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Username or Email Address",
                        labelStyle: const TextStyle(
                          color: Color(0xFF08252E),
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.normal,
                        ),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Color(0xFF08252E),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF08252E),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      style: const TextStyle(color: Color(0xFF08252E)),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.9,
                      maxHeight: 55.0,
                    ),
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: const TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF08252E),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Color(0xFF08252E),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(26),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0xFF08252E),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(26),
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Checkbox(
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.white,
                            activeColor: Colors.blue,
                          ),
                          const Text(
                            "Remember Me",
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF08252E),
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF08252E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 29),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MainBottomNav(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF162534),
                      minimumSize: const Size(double.infinity, 50),
                    ),

                    child: const Text(
                      "Log In",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login as Parent",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF08252E),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Login as Teacher",
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal,
                            color: Color(0xFF08252E),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  const Text(
                    "Address: \n St.96 Christopher Howes, Khan Daun Penh, Phnom Penh, Cambodia, 12202",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF08252E),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Website: https://numer.digital/",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.normal,
                      color: Color(0xFF08252E),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.all(15),
            height:
                MediaQuery.of(context).size.height * 0.75, // 80% screen height
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
    );
  }
}

class MainBottomNav extends StatefulWidget {
  @override
  _MainBottomNavState createState() => _MainBottomNavState();
}

class _MainBottomNavState extends State<MainBottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    Center(child: Text('Calendar Screen')),
    Center(child: Text('Search Screen')),
    Center(child: Text('Store Screen')),
    AccountScreen(),
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
      body: _screens[_selectedIndex], // ✅ This displays the selected screen
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          backgroundColor: const Color(0xFF08252E),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
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
  @override
  Widget build(BuildContext context) {
    return Center(
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
            height: MediaQuery.of(context).size.height * 0.4,
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
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => MainBottomNav()),
                      (route) => false,
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
