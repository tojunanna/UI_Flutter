import 'package:flutter/material.dart';

class RecentJobCard extends StatelessWidget {
  final String companyName;
  final String jobTitle;
  final String logoImagePath;
  final int hourlyRate;

  const RecentJobCard({
    required this.companyName,
    required this.jobTitle,
    required this.logoImagePath,
    required this.hourlyRate,
  });

  @override
  Widget build (BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
      color: Colors.grey[500],
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(8),
        ),
        
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(

                    height: 40,
                    padding: const EdgeInsets.all(8),
                    color: Colors.grey[300],
                    child: Image.asset(logoImagePath),
                  ),
                ),
                const SizedBox(width: 10),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      jobTitle,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(companyName,
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),

                  ],
                ),
              ],
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(7),
              child: Container(
                padding: const EdgeInsets.all(5),
                color: Colors.green[300],
                child: Text(
                    '\$'+hourlyRate.toString() + '/h',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),

      ),
    );
  }
}
