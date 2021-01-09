import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:foodorderingapp/Data/data.dart';
import 'package:foodorderingapp/components/cuisine_items_card.dart';
import 'package:foodorderingapp/components/home_title.dart';
import 'package:foodorderingapp/components/popular_restaurants_card.dart';


// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  TextEditingController _searchcontroller = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.redAccent,
                    ),
                    Text(
                      'Nashik ',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/picklocation');
                        },
                        child: Text(
                          '(change location)',
                          style: TextStyle(color: Colors.blueAccent),
                        )),
                  ],
                ),
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: Hero(
                    tag: 'searchfield',
                    child: Stack(children: [
                      Container(
                        color: Colors.black,
                      ),
                      TextField(
                        controller: _searchcontroller,
                        // enabled: false,
                        onTap: () => Navigator.pushNamed(context, '/search')
                            .whenComplete(() {
                          _searchcontroller.clear();
                        }),
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                            color: Colors.redAccent,
                          ),
                          contentPadding: EdgeInsets.all(8),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(6),
                              borderSide: BorderSide(color: Colors.redAccent)),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              HomeTitle(text: "Cuisines"),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  itemCount: cuisineItems.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16),
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return CuisineItemsCard(cuisineItems: cuisineItems[index]);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              HomeTitle(text: "Popular Restaurants"),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                  itemCount: popularRestaurants.length,
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: 16),
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return PopularRestaurantsCard(popularItems: popularRestaurants[index]);
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              HomeTitle(text: "Nearby Locations"),
              SizedBox(
                height: 16,
              ),
              ListView.builder(
                itemCount: nearbyLocations.length,
                scrollDirection: Axis.vertical,
                padding: EdgeInsets.all(16),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Card(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Text(
                            nearbyLocations[index],
                            style: TextStyle(fontWeight: FontWeight.w400),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios_sharp,
                            size: 15,
                            color: Colors.redAccent,
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
