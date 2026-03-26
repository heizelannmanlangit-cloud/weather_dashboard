import 'package:flutter/material.dart';

void main() {
  runApp(WeatherDashboard());
}

class WeatherDashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 221, 228, 236,),
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 30),

            Center(
              child:
                Text(
                  "Weather Dashboard",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 19, 25, 34)),
              ),
            ),




          ],
        ),
      ),
      ),
    );
  }
}

