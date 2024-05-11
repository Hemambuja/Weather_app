import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/hourlycalledcard.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Weather App",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.refresh),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          SizedBox(
            width: double.infinity,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(35),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                    child: const Padding(
                      padding: EdgeInsets.all(12.0),
                      child: Column(
                        children: [
                          Text(
                            '300.60 °F',
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Icon(
                            Icons.cloud,
                            size: 85,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Rain",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 28, 255, 104)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          const Text(
            'Weather Forecast',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 5,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Hourlycalledcard(),
                Hourlycalledcard(),
                Hourlycalledcard(),
                Hourlycalledcard(),
                Hourlycalledcard(),
                Hourlycalledcard(),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Additional Information",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 16,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(5.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.water_drop,
                      size: 42,
                    ),
                    SizedBox(
                      height: 13,
                    ),
                    Text(
                      "Humidity",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "94",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Icon(
                    Icons.air_sharp,
                    size: 42,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Wind Speed",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "7.67",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  Icon(
                    Icons.speed,
                    size: 42,
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Text(
                    "Pressure",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "1000",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          )
        ]),
      ),
    );
  }
}
