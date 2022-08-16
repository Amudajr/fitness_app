import 'package:fit/pages/notifications/notification_page.dart';
import 'package:fit/pages/perfomed_task/performed_page.dart';
import 'package:fit/pages/profile/profile_page.dart';
import 'package:fit/pages/task/task_page.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  PageController? _pageController;

  int _page = 0;
  int _activePage = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  final List<Widget> _tabItems = [PerformedTask(), TaskPage(), ProiflePage(), NotificationPage()];

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.blue),
          Icon(Icons.run_circle, size: 30, color: Colors.blue),
          Icon(Icons.person, size: 30, color: Colors.blue),
          Icon(Icons.notifications, size: 30, color: Colors.blue),
        ],
        onTap: (index) {
          setState(() {
            _activePage = index;
             });
        },
      ),
      body:
        _tabItems[_activePage],
    );
    
  }
}