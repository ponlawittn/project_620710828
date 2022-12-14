import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_620710828/pages/event/page_event.dart';
import 'package:project_620710828/pages/search/place_search.dart';

class HomePage extends StatefulWidget {
  static const routeName = '/home_page';
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgsea.jpg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.srcATop),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: Text(
                      'ท่ อ ง เ ที่ ย ว ทั่ ว ไ ท ย ทุ ก ทิ ศ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.prompt(
                          fontSize: 60.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    )),
                SizedBox(
                  height: 40.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF03878F),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  ),
                  width: 250.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, PlaceSearchPage.routeName,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'ค้นหาสถานที่ท่องเที่ยว',
                            style: GoogleFonts.prompt(
                              color: Colors.white70,
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF2B3D5B),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  // width: 150.0,
                  width: 250.0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, EventPage.routeName,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.event,
                            color: Colors.white70,
                            size: 30.0,
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Text(
                            'งานเทศกาลใกล้ฉัน',
                            style: GoogleFonts.prompt(
                              color: Colors.white70,
                              fontSize: 19.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}