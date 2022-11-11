import 'package:flutter/material.dart';
import 'package:project_620710828/pages/event/page_event.dart';
import 'package:project_620710828/pages/home/home_page.dart';
import 'package:project_620710828/pages/search/place_search.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ท่องเที่ยวทั่วไทยทุกทิศ',

      routes: {
        HomePage.routeName : (context) => const HomePage(),
        PlaceSearchPage.routeName: (context) => const PlaceSearchPage(),
        EventPage.routeName: (context) => const EventPage(),
      },
      initialRoute: HomePage.routeName,
    );
  }
}