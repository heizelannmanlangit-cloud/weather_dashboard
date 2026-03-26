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
        backgroundColor: Color.fromARGB(255, 222, 228, 236),
      body: SafeArea(
        child: Column(
          children: [

            SizedBox(height: 50),

            Center(
              child:
                Text(
                  "Weather Dashboard",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 19, 25, 34)),
              ),
            ),

            SizedBox(height: 20),

            //First container
            Container(
              height: 600,
              width: 450,
              decoration: BoxDecoration(
              color: Color.fromARGB(255, 223, 228, 238),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 3,
                blurRadius: 7,
                offset: Offset(0, 3)
                  ),
                ],
              ),


              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsetsGeometry.symmetric(vertical: 40, horizontal: 40),
                          child: Image.network('https://cdn-icons-png.flaticon.com/128/1163/1163763.png', width: 100,),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('25°c', style: TextStyle(fontSize: 60, fontWeight: FontWeight.w800),),
                            Text('Cloudy with a chance of sunshine\nLondon, UK', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ],
                    ),


                    Center(
                      child: Container(
                        height: 400,
                        width: 400,
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 197, 206, 217),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 1,
                              blurRadius: 3,
                            ),
                          ],
                      ),
                      ),
                    ),


                  ],
                ),


            ),
          ],
        ),
      ),
      ),
    );
  }
}

