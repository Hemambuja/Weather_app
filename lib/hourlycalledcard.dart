import "package:flutter/material.dart";

class Hourlycalledcard extends StatelessWidget {
  const Hourlycalledcard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 7,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: const SizedBox(
        width: 100,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                '09.00',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.cloud,
                size: 45,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "301.17",
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
