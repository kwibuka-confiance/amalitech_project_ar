import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class RideCardWidget extends StatefulWidget {
  String id;
  String name;
  String image;
  String address;
  String distance;
  String duration;
  DateTime date;
  String speed;

  RideCardWidget(
    this.id,
    this.name,
    this.date,
    this.address,
    this.distance,
    this.duration,
    this.image,
    this.speed, {
    Key? key,
  }) : super(key: key);

  @override
  State<RideCardWidget> createState() => _RideCardWidgetState();
}

class _RideCardWidgetState extends State<RideCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
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
                widget.address,
                style: const TextStyle(color: Colors.white),
              ),
              Text(
                widget.date.toString(),
                style: const TextStyle(color: Colors.white),
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
                  // constraints:
                  //     const BoxConstraints(minWidth: 200, maxHeight: 200),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(widget.image, fit: BoxFit.cover)),
                ),
              )
            ],
          ),
        ],
      )),
    );
  }
}
