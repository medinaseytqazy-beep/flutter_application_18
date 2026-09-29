import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,

        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(Icons.menu, color: Colors.grey),
          title: Text(
            'Weather',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            Icon(Icons.settings, color: Colors.grey),
            SizedBox(width: 15),
          ],
        ),

        body: Column(
          children: [
            // IMAGE + SUN
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  color: Colors.blue,
                  child: Image.network(
                    'https://images.unsplash.com/photo-1500534623283-312aade485b7',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),

            // MAIN CONTENT
            Padding(
              padding: EdgeInsets.all(15),

              child: Column(
                children: [
                  Text(
                    'Tuesday - May 22',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 12),

                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: TextStyle(color: Colors.grey),
                  ),

                  Text(
                    'Aliquam pulvinar purus nec nulla condimentum egestas.',
                    style: TextStyle(color: Colors.grey),
                  ),

                  SizedBox(height: 15),

                  // CURRENT WEATHER
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.wb_sunny, color: Colors.yellow, size: 35),

                      SizedBox(width: 15),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '15°C Clear',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            'Murmanskaya oblast, Murmansk',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                  // FIRST ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      weatherBox('20°C'),
                      weatherBox('21°C'),
                      weatherBox('22°C'),
                      weatherBox('23°C'),
                    ],
                  ),

                  SizedBox(height: 10),

                  // SECOND ROW
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      weatherBox('24°C'),
                      weatherBox('25°C'),
                      weatherBox('26°C'),
                      weatherBox('27°C'),
                    ],
                  ),

                  SizedBox(height: 20),

                  // FOOTER
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Info with openweathermap.com',
                        style: TextStyle(color: Colors.grey, fontSize: 11),
                      ),

                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow, size: 18),
                          Icon(Icons.star, color: Colors.yellow, size: 18),
                          Icon(Icons.star, color: Colors.yellow, size: 18),
                          Icon(Icons.star, color: Colors.black, size: 18),
                          Icon(Icons.star, color: Colors.black, size: 18),
                        ],
                      ),
                    ],
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

Widget weatherBox(String temperature) {
  return Container(
    width: 70,
    height: 45,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
      borderRadius: BorderRadius.circular(5),
    ),

    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.cloud, color: Colors.lightBlue, size: 22),

        SizedBox(width: 3),

        Text(temperature, style: TextStyle(fontSize: 12)),
      ],
    ),
  );
}
