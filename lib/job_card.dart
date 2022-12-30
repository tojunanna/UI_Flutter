import 'package:flutter/material.dart';

class JobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  JobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
});

  @override
    Widget build(BuildContext context){
  return Padding(
    padding:  const EdgeInsets.all(25.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(12),
        color: Colors.grey[500],
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                  child: Image.asset(logoImagePath),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding:  const EdgeInsets.all(12),
                      child:  Text(
                          'Part Time',
                        style: TextStyle(color: Colors.white),

                      ),
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
            Text(jobTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),

            ),
            Text(
                '\$' + hourlyRate.toString() + '/hr',),
          ],
        ),
      ),
    ),
  );




  }
}