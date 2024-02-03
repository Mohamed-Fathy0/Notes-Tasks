import 'package:flutter/material.dart';

class ContainerNote extends StatelessWidget {
  const ContainerNote({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double containerWidth = (width - 30) / 2; // Adjusted width calculation

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        height: 200,
        width: containerWidth,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text(
                "title",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16, // Adjust font size if needed
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "titleLarge",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
