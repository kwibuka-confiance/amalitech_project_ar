import 'package:amalitech_project_ar/models/Ride.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class RideCardWidget extends StatefulWidget {
  String id;
  String name;
  String image;
  String address;
  String distance;
  String duration;
  DateTime date;
  String speed;
  bool isFavorite;
  Function favoriteHandler;

  RideCardWidget(
    this.id,
    this.name,
    this.date,
    this.address,
    this.distance,
    this.duration,
    this.image,
    this.speed,
    this.isFavorite,
    this.favoriteHandler, {
    Key? key,
  }) : super(key: key);

  @override
  State<RideCardWidget> createState() => _RideCardWidgetState();
}

class _RideCardWidgetState extends State<RideCardWidget> {
  @override
  Widget build(BuildContext context) {
    reduceWord(address) {
      return address.length > 40 ? address.substring(0, 40) + '...' : address;
    }

    reduceDateDigit(dates) {
      return dates.length > 10 ? dates.substring(0, 10) : dates;
    }

    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 15),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 31, 31, 31),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    reduceWord(widget.address),
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                  Text(
                    reduceDateDigit(widget.date.toString()),
                    style: const TextStyle(color: Colors.white, fontSize: 10),
                  )
                ],
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Distance",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: widget.distance,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                            const TextSpan(
                                text: " km",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                ))
                          ]))
                        ],
                      ),
                      const SizedBox(height: 10),
                      // DURATION
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Duration",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: widget.duration,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                            const TextSpan(
                                text: " hr",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                ))
                          ]))
                        ],
                      ),
                      const SizedBox(height: 10),

                      // SPEED
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Speed",
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                          RichText(
                              text: TextSpan(children: [
                            TextSpan(
                                text: widget.speed,
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                )),
                            const TextSpan(
                                text: "kph",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w200,
                                ))
                          ]))
                        ],
                      )
                    ],
                  ),
                  Material(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 130,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child:
                              Image.network(widget.image, fit: BoxFit.cover)),
                    ),
                  )
                ],
              ),
            ],
          )),
        ),
        Positioned(
          bottom: 34,
          right: 20,
          child: GestureDetector(
            onTap: () => widget.favoriteHandler(widget.id),
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Colors.white,
              child: widget.isFavorite
                  ? const Icon(
                      Icons.favorite,
                      size: 15,
                      color: Colors.red,
                    )
                  : const Icon(Icons.favorite_border, size: 15),
            ),
          ),
        )
      ],
    );
  }
}
