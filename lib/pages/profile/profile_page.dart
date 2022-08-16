import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProiflePage extends StatelessWidget {
  const ProiflePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    'Profile',
                    style: GoogleFonts.ubuntu(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(Icons.more_horiz_outlined),
                ],
              ),
            ),
            Column(children: [
              Divider(
                height: 15,
                thickness: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      foregroundImage: AssetImage('images/gym_avatar.jpg'),
                      backgroundColor: Colors.grey,
                      radius: 35,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Kewulere Amuda',
                          style: GoogleFonts.ubuntu(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Get Fit Program',
                          style: GoogleFonts.ubuntu(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    SizedBox(
                      height: 35,
                      width: 90,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0)),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {},
                        child: Text(
                          'Edit',
                          style: GoogleFonts.ubuntu(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 242, 242, 242),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '160cm',
                            style: GoogleFonts.ubuntu(
                                fontSize: 17, color: Colors.blue),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Height',
                            style: GoogleFonts.ubuntu(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )),
                  Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 242, 242, 242),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '60kg',
                            style: GoogleFonts.ubuntu(
                                fontSize: 17, color: Colors.blue),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Weight',
                            style: GoogleFonts.ubuntu(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )),
                  Container(
                      height: 70,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 242, 242, 242),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '22yo',
                            style: GoogleFonts.ubuntu(
                                fontSize: 17, color: Colors.blue),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Age',
                            style: GoogleFonts.ubuntu(
                              fontSize: 15,
                            ),
                          ),
                        ],
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 240,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 242, 242, 242),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Account',
                        style: GoogleFonts.ubuntu(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.account_circle_outlined,
                            color: Colors.blue,
                            size: 22,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Personal Data',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.archive_outlined,
                            color: Colors.blue,
                            size: 22,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Achievement',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.history,
                            color: Colors.blue,
                            size: 22,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Activity History',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.precision_manufacturing_rounded,
                            color: Colors.blue,
                            size: 22,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Workout Progress',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 145,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 242, 242, 242),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Other',
                        style: GoogleFonts.ubuntu(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.message_outlined,
                            color: Colors.blue,
                            size: 22,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Contact Us',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.settings_outlined,
                            color: Colors.blue,
                            size: 22,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Settings',
                              style: GoogleFonts.ubuntu(
                                  fontSize: 15, color: Colors.black),
                            ),
                          ),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
