import 'package:flutter/material.dart';
import 'job_card.dart';
import 'recent_job_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List jobsForYou = [
    // [ companyName, jobTitle, logoImagePath, hourlyRate ]
    ['Logo', 'UI Designer', 'images/logo.png', 45],
    ['Apple', 'Apple Designer', 'images/apple.png', 90],
    ['Google', 'Google Designer', 'images/google.png', 25],

  ];

  final List recentJobs = [
    // [ companyName, jobTitle, logoImagePath, hourlyRate ]
    ['Nike', 'Nike Designer', 'images/logo.png', 55],
    ['Yezzy', 'Yezzy Designer', 'images/apple.png', 60],
    ['Iphone', 'Iphone Designer', 'images/google.png', 25],
    ['Nike', 'Nike Designer', 'images/logo.png', 45],
    ['Yezzy', 'Yezzy Designer', 'images/apple.png', 90],
    ['Iphone', 'Iphone Designer', 'images/google.png', 25],

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Center(child: Text(
            'Job App',

          style: TextStyle(
            color: Colors.black,


          ),
        ),
        ),
        backgroundColor: Colors.grey[800],
        leading: const Icon(
          Icons.star,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.add,
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            //
            //
            // // app bar
            // Container(
            //   height: 50,
            //   color: Colors.black,
            //
            // ),

            //discover a new path
            const Padding(
              padding: EdgeInsets.only(left: 25.0),
            child: Text(
              'Discover a new role',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              ),
            ),
            ),
            const SizedBox(height: 20),
            // search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),

              child: Container(
                decoration: BoxDecoration(color: Colors.grey[200]),
                child: Row(
                  children: const [
                      Padding(
                        padding: EdgeInsets.all(12.0),
                        child: Icon(Icons.search),
                      ),
                    
                    
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none, hintText: 'Search for a job'
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Padding(
                padding: EdgeInsets.only(left:25.0),
              child: Text(
                'For You',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            const SizedBox(height: 20),
              Container(
                height: 200,

                child: ListView.builder(
                  itemCount:  jobsForYou.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                  return JobCard(
                      companyName: jobsForYou[index][0],
                      jobTitle: jobsForYou[index][1],
                      logoImagePath: jobsForYou[index][2],
                    hourlyRate: jobsForYou[index][3],

            );
                },
                ),
              ),


            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.only(left:25.0),
              child: Text(
                'Recently Added',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: ListView.builder(
                      itemCount:  recentJobs.length,
                      itemBuilder: (context, index) {
                    return RecentJobCard(
                      companyName: recentJobs[index][0],
                        jobTitle: recentJobs[index][1],
                        logoImagePath:recentJobs[index][2],
                        hourlyRate:recentJobs[index][3],
                    );

                  }
                  ),
                ),
    ),
          ],
        ),
      ),
    );
  }
}
