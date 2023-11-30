import 'package:flit/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flit/model/distance_flight.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: flitWhiteBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Good Morning, Roisul',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: semibold,
                            fontFamily: 'Poppins',
                            color: flitPrimaryFont,
                          ),
                        ),
                        Text(
                          'Enjoy Your Trip',
                          style: TextStyle(
                              fontSize: 11,
                              fontWeight: regular,
                              fontFamily: 'Poppins',
                              color: flitPrimaryFont),
                        ),
                      ],
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/images/poto_propil.jpeg',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.all(24),
              color: flitPrimaryBlue,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Expanded(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'From',
                                  style: TextStyle(
                                    color: flitWhiteBackgroundColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: light,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Text(
                                'YIA',
                                style: TextStyle(
                                  color: flitWhiteBackgroundColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: semibold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'Yogyakarta (JOG)',
                                style: TextStyle(
                                  color: flitWhiteBackgroundColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: regular,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Image.asset(
                            'assets/images/distance_arrow.png',
                            width: 55,
                            height: 30,
                          ),
                        ),
                        const Expanded(
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(bottom: 10),
                                child: Text(
                                  'To',
                                  style: TextStyle(
                                    color: flitWhiteBackgroundColor,
                                    fontFamily: 'Poppins',
                                    fontWeight: light,
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Text(
                                'Select',
                                style: TextStyle(
                                  color: flitVariantOrange,
                                  fontFamily: 'Poppins',
                                  fontWeight: semibold,
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                'City',
                                style: TextStyle(
                                  color: flitWhiteBackgroundColor,
                                  fontFamily: 'Poppins',
                                  fontWeight: regular,
                                  fontSize: 10,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'Book Now >',
                        style: TextStyle(
                          color: flitPrimaryFont,
                          fontFamily: 'Poppins',
                          fontSize: 15,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text(
                    'Choose The Trip',
                    style: TextStyle(
                        color: flitPrimaryFont,
                        fontFamily: 'Poppins',
                        fontWeight: semibold,
                        fontSize: 14),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'more...',
                        style: TextStyle(
                          color: flitPrimaryBlue,
                          fontFamily: 'Poppins',
                          fontWeight: regular,
                        ),
                      ))
                ],
              ),
            ),
            // LayoutBuilder(
            //     builder: (BuildContext context, BoxConstraints constraints) {
            //       DistanceFlight distanceFlight = distanceFlightList.isNotEmpty
            //       ? distanceFlightList[0]
            //       : DistanceFlight(fromAirport: '', fromCity: '', toAirport: '', toCity: '', flightNumber: '', dateFlight: '', timeFlight: '');
            //     return DistanceFlightGrid(distanceFlight: distanceFlight);
            // })
            Padding(
              padding: const EdgeInsets.only(left: 24.0, right: 24.0),
              child: Column(
                children: distanceFlightList.map((DistanceFlight distanceFlight) {
                  return DistanceFlightGrid(distanceFlight: distanceFlight);
                }).toList()
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DistanceFlightGrid extends StatelessWidget {
  final DistanceFlight distanceFlight;
  const DistanceFlightGrid({super.key, required this.distanceFlight});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  const Text('From'),
                  Text(
                    distanceFlight.fromAirport
                  ),
                  Text(
                    distanceFlight.fromCity
                  ),
                  const Text('---------------------'),
                  const Text('To'),
                  Text(
                    distanceFlight.toAirport
                  ),
                  Text(
                    distanceFlight.toCity
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text('flight number'),
                    Text(
                      distanceFlight.flightNumber
                    ),
                    const Text('Date'),
                    Text(
                      distanceFlight.dateFlight
                    ),
                    const Text('Time'),
                    Text(
                      distanceFlight.timeFlight
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: flitVariantBlue
                  ),
                  child: const Text(
                    'Details >>',
                    style: TextStyle(
                      color: flitWhiteBackgroundColor
                    ),
                  )
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
