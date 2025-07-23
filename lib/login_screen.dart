import 'package:flutter/material.dart';
import 'package:num_attendant/main_box_nav.dart';

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
          Image.asset(
            'assets/Logo copy.png',
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