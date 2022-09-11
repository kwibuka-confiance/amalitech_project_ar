import 'package:amalitech_project_ar/models/Ride.dart';
import 'package:amalitech_project_ar/widgets/rideCard.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);
  static const String routeName = '/home-screen';
  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Recent",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w200,
                          color: Colors.white,
                        )),
                  ),
                  Container(
                    margin: const EdgeInsets.only(right: 5),
                    padding:
                        const EdgeInsets.symmetric(vertical: 7, horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 31, 31, 31),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text("Favorite",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              // Search
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(
                        color: Color.fromARGB(255, 85, 85, 85), width: 0.7),
                    borderRadius: BorderRadius.circular(10)),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Search ride',
                      labelStyle: const TextStyle(
                        fontSize: 12,
                        color: Color.fromARGB(255, 82, 82, 82),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Color.fromARGB(255, 82, 82, 82),
                      ),
                      isDense: true,
                      contentPadding: const EdgeInsets.symmetric(vertical: 0)),
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
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: rides.length,
                itemBuilder: (context, index) {
                  return RideCardWidget(
                    rides[index].id,
                    rides[index].name,
                    rides[index].date,
                    rides[index].address,
                    rides[index].distance,
                    rides[index].duration,
                    rides[index].image,
                    rides[index].speed,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: ,
    );
  }
}
