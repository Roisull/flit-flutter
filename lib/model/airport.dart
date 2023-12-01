class Airport{
  String nameAirport;
  String nameCity;
  String country;

  Airport({
    required this.nameAirport,
    required this.nameCity,
    required this.country
  });
}

var airportList = [
  Airport(
    nameAirport: 'CGK', 
    nameCity: 'Jakarta', 
    country: 'Indonesia'
  ),
  Airport(
    nameAirport: 'HND', 
    nameCity: 'Tokyo', 
    country: 'Japan'
  ),
  Airport(
    nameAirport: 'TWN', 
    nameCity: 'Taoyuan', 
    country: 'Taiwan'
  ),
  Airport(
    nameAirport: 'HKG', 
    nameCity: 'Hong Kong', 
    country: 'Republik Rakyat Tiongkok'
  )
];