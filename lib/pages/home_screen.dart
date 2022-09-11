import 'package:amalitech_project_ar/models/filter.dart';
import 'package:amalitech_project_ar/models/ride.dart';
import 'package:amalitech_project_ar/widgets/filterWiget.dart';
import 'package:amalitech_project_ar/widgets/rideCard.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);
  static const String routeName = '/home-screen';
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Ride> _rides = [...rides];
  Filter selectedFilter = Filter('All');
  @override
  Widget build(BuildContext context) {
    changeSelectedFilter(filter) {
      setState(() {
        selectedFilter.name = filter;
      });
    }

    isFavoriteHandler(rideId) {
      setState(() {
        _rides.forEach((element) {
          if (element.id == rideId) {
            element.isFavorite = !element.isFavorite;
          }
        });
      });
    }

    dynamic filteredList;
    filterListOfRides() {
      if (selectedFilter.name == 'All') {
        return _rides;
      } else if (selectedFilter.name == 'Favorite') {
        return _rides.where((element) => element.isFavorite).toList();
      } else if (selectedFilter.name == 'Speed') {
        return _rides.where((element) => element.speed == 'Fast').toList();
      } else if (selectedFilter.name == 'Distance') {
        return _rides.where((element) => element.distance == 'Long').toList();
      } else if (selectedFilter.name == 'Duration') {
        return _rides.where((element) => element.duration == 'Long').toList();
      }
    }

    filteredList = filterListOfRides();

    return Scaffold(
      backgroundColor: Colors.black,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 31, 31, 31),
        title: Container(
          width: 70,
          child: Image.asset(
            'assets/images/group2.png',
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_horiz,
              color: Colors.green,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: filters
                          .map((filter) => FilterWidget(filter.name,
                              selectedFilter, changeSelectedFilter))
                          .toList(),
                    ),
                  ),
                  // Search
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        border: Border.all(
                            color: const Color.fromARGB(255, 85, 85, 85),
                            width: 0.7),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          labelText: 'Search ride',
                          labelStyle: const TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 252, 252, 252),
                          ),
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color.fromARGB(255, 82, 82, 82),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(vertical: 0)),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Fill your email";
                        }

                        return null;
                      },
                      onSaved: (value) {},
                    ),
                  ),
                  // LIST OF RIDES
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    constraints: const BoxConstraints(
                      minHeight: 700,
                    ),
                    child: filteredList.length == 0
                        ? Container(
                            padding: const EdgeInsets.only(top: 70),
                            child: Column(
                              children: const [
                                Text(
                                  " OOOPS",
                                  style: TextStyle(
                                      fontSize: 30, color: Colors.white),
                                ),
                                Text(
                                  "No rides found",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ))
                        : ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: filteredList.length,
                            itemBuilder: (context, index) {
                              return RideCardWidget(
                                filteredList[index].id,
                                filteredList[index].name,
                                filteredList[index].date,
                                filteredList[index].address,
                                filteredList[index].distance,
                                filteredList[index].duration,
                                filteredList[index].image,
                                filteredList[index].speed,
                                filteredList[index].isFavorite,
                                isFavoriteHandler,
                              );
                            },
                          ),
                  ),
                  const SizedBox(
                    height: 68,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                color: const Color.fromARGB(255, 32, 32, 32),
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.bike_scooter,
                            color: Colors.white,
                          ),
                          Text(
                            "Ride",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              radius: 14,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.asset(
                                      "assets/images/profile.jpg"))),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text(
                            "Profile",
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 30,
              child: Stack(
                children: [
                  CircleAvatar(
                      minRadius: 30,
                      child: Container(
                        width: 62,
                        height: 62,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: const Color.fromARGB(255, 0, 0, 0),
                              width: 3),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(100)),
                        ),
                        child: const Icon(
                          Icons.monitor_heart_rounded,
                          size: 30,
                          color: Colors.black,
                        ),
                      )),
                ],
              )),
        ],
      ),
    );
  }
}
