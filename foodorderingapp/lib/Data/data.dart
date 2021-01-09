import 'package:foodorderingapp/models/cuisineItems.dart';
import 'package:foodorderingapp/models/nearbyItems.dart';
import 'package:foodorderingapp/models/popularItems.dart';

List<String> nearbyLocations = [
  'Adgaon',
  'Anusuya Nagar',
  'Ashok Sthamb',
  'Bytco Point',
  'Canada Corner',
  'College Road',
  'Dwarka',
  'Fulenagar',
  'Gangapur Road',
  'Gole Colony',
  'Govind Nagar',
  'Indira Nagar',
  'Jail Road',
  'Mahatma Nagar',
  'MG Road',
  'Mumbai Agra Road',
  'Mumbai Naka',
  'Nashik Main Road',
  'Nashik Road',
  'Old Agra Road',
  'Panchvati',
  'Nashik Pune Road',
  'Raviwar Peth',
  'Saibaba Nagar',
  'CDO-MERI Colony',
  'Sane Guruji Nagar',
  'Satpur',
  'Shalimar',
  'Sharanpur',
  'Sharanpur Road',
  'Shivaji Nagar',
  'Shivaji Road',
  'Sawarkar Nagar',
  'Shramik Nagar',
  'Tidke Nagar',
  'Tilak Road',
  'Pathardi Gaon',
  'Parab Nagar',
  'Trimbak Road',
  'Trimurti Chowk',
  'Vakil Wadi',
  'Vrindavan Colony',
  'Koknipura'
];
List<CuisineItems> cuisineItems = [
  CuisineItems(
      text: "Pizza", secondaryText: "28 Restaurants", image: "images/pizza.jpeg"),
  CuisineItems(
      text: "Chat", secondaryText: "26 Restaurants", image: "images/sushi.jpeg"),
  CuisineItems(
      text: "Chinese",
      secondaryText: "31 reviews",
      image: "images/mexican.jpeg"),
];
List<PopularRestraunt> popularRestaurants = [
  PopularRestraunt(
      text: "Curry Leaves", image: "images/brewery.jpeg"),
  PopularRestraunt(
      text: "Bon Vivant", image: "images/greenpoint.jpeg"),
];
List<NearByItems> listItems = [
  NearByItems(
      text: "Sotto || Ponte Pizza\nPasta Tradizionali",
      image: "images/ponte_pizza.jpeg"),
  NearByItems(
      text: "Delicious Pizza & Pasta\nTraditionaly",
      image: "images/delicious.jpeg"),
  NearByItems(
      text: "Delicious Pizza & Pasta\nTraditionaly",
      image: "images/delicious.jpeg"),
];
