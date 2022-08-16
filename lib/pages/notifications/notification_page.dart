import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Icon(
                Icons.arrow_back)),
            Text('Notifications',
              style: GoogleFonts.ubuntu(
                fontSize: 20),
            ),
            Icon(Icons.more_horiz_outlined),
          ],
        ),
      ),
    );
  }
}
