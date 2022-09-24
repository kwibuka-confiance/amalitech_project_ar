import 'package:amalitech_project_ar/models/filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class FilterWidget extends StatelessWidget {
  final String name;
  Filter selectedFilter;
  Function changeSelectedFilter;
  FilterWidget(this.name, this.selectedFilter, this.changeSelectedFilter,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        changeSelectedFilter(name);
      },
      child: Container(
        margin: const EdgeInsets.only(right: 12),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
        decoration: BoxDecoration(
          color: selectedFilter.name == name
              ? Color(0xFF42B546)
              : const Color.fromARGB(255, 43, 43, 43),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Text(name,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w200,
              color: Colors.white,
            )),
      ),
    );
  }
}
