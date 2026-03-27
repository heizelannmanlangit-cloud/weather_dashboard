import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherDashboard());
}

class WeatherDashboard extends StatelessWidget {
  const WeatherDashboard({super.key});

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
                child: Text(
                  "Weather Dashboard",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(255, 19, 25, 34),
                  ),
                ),
              ),

              SizedBox(height: 20),

              // First container
              Container(
                height: 500,
                width: 450,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 223, 228, 238),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                          child: Text('⛅', style: TextStyle(fontSize: 80)),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '25°C',
                              style: TextStyle(fontSize: 60, fontWeight: FontWeight.w900),
                            ),
                            Text(
                              'Cloudy with a chance of sunshine\nLondon, UK',
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ],
                    ),

                    // Second Container
                    Center(
                      child: Container(
                        height: 300,
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

                        // Grid :3
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(16, 30, 16, 16), 
                          child: GridView.count(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            childAspectRatio: 0.85,
                            physics: NeverScrollableScrollPhysics(),
                            children: [

                              
                              buildWeatherCard('10:00', '☀️', '26°C'),
                              buildWeatherCard('11:00', '☀️', '27°C'),
                              buildWeatherCard('13:00', '⛅', '25°C'),
                              buildWeatherCard('13:00', '☁️', '24°C'),

                              buildWeatherCard('10:00', '☀️', '25°C'),
                              buildWeatherCard('14:00', '🌧️', '24°C'),
                              buildWeatherCard('14:00', '🌧️', '23°C'),
                              buildWeatherCard('15:00', '🌧️', '22°C'),
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Column(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color(0xFF3B82F6),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.home_rounded, color: Colors.white, size: 28),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF3B82F6),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 35),

                  Column(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 180, 190, 204),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.search_rounded, color: Colors.white, size: 28),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Search',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 120, 132, 148),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(width: 35),

                  Column(
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 180, 190, 204),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.person_rounded, color: Colors.white, size: 28),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Profile',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 120, 132, 148),
                        ),
                      ),
                    ],
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget buildWeatherCard(String time, String icon, String temp) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 235, 240, 248),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 3,
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              time,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 100, 112, 130)
                    ),
                  ),
            
            SizedBox(height: 6),

          Text(
            icon, 
            style: TextStyle(fontSize: 28)),
            
            SizedBox(height: 6),

          Text(temp,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800)),
        ],
      ),
    );
  }
}