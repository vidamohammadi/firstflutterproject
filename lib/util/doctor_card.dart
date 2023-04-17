import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorProfession;

  DoctorCard({
    required this.doctorImagePath,
    required this.rating,
    required this.doctorName,
    required this.doctorProfession,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.deepPurple[100],
        ),
        child: Center(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  doctorImagePath,
                  height: 80,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children:  [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text(
                    rating,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),

               Text(
                doctorName,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
              ),

               Text(
                doctorProfession + '7 y.e.',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey
                ),
              ),
            ],),

        ),

      ),
    );
  }
}
