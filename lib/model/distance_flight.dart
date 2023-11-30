class DistanceFlight{
  String fromAirport;
  String fromCity;
  String toAirport;
  String toCity;
  String flightNumber;
  String dateFlight;
  String timeFlight;

  DistanceFlight({
    required this.fromAirport,
    required this.fromCity,
    required this.toAirport,
    required this.toCity,
    required this.flightNumber,
    required this.dateFlight,
    required this.timeFlight
  });
}

var distanceFlightList = [
  DistanceFlight(
    fromAirport: 'CGK', 
    fromCity: 'Jakarta', 
    toAirport: 'HND', 
    toCity: 'Tokyo', 
    flightNumber: 'HN09K', 
    dateFlight: '14/01/2024', 
    timeFlight: '00:45'
  ),
  DistanceFlight(
    fromAirport: 'HND', 
    fromCity: 'Tokyo', 
    toAirport: 'CGK', 
    toCity: 'Jakarta', 
    flightNumber: 'CG67B', 
    dateFlight: '16/01/2024', 
    timeFlight: '01:45'
  ),
  DistanceFlight(
    fromAirport: 'HND', 
    fromCity: 'Tokyo', 
    toAirport: 'CGK', 
    toCity: 'Jakarta', 
    flightNumber: 'CG67B', 
    dateFlight: '16/01/2024', 
    timeFlight: '01:45'
  ),
  DistanceFlight(
    fromAirport: 'HND', 
    fromCity: 'Tokyo', 
    toAirport: 'CGK', 
    toCity: 'Jakarta', 
    flightNumber: 'CG67B', 
    dateFlight: '16/01/2024', 
    timeFlight: '01:45'
  ),
  DistanceFlight(
    fromAirport: 'HND', 
    fromCity: 'Tokyo', 
    toAirport: 'CGK', 
    toCity: 'Jakarta', 
    flightNumber: 'CG67B', 
    dateFlight: '16/01/2024', 
    timeFlight: '01:45'
  ),
];
