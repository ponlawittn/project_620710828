import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_620710828/pages/home/home_page.dart';
import 'package:project_620710828/pages/search/list.dart';


class PlaceSearchPage extends StatefulWidget {
  static const routeName = '/place_search_page';

  const PlaceSearchPage({Key? key}) : super(key: key);

  @override
  _PlaceSearchPageState createState() => _PlaceSearchPageState();
}

class _PlaceSearchPageState extends State<PlaceSearchPage> {
  var _province;
  var _Select;
  var _Type;
  final _controller = TextEditingController();
  var clear;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg.jpg"),
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.srcATop),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20.0,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 400.0,
                          child: TextField(
                            controller: _controller,
                            style: GoogleFonts.prompt(color: Colors.black, fontSize: 20.0,
                            ),
                            cursorColor: Colors.black,
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 3.0),
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black, width: 2.0),
                                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                              ),
                              focusColor: Colors.black,
                              hintText: 'ป้อนจังหวัดที่ต้องการค้นหา',
                              hintStyle: TextStyle(color: Colors.black, fontSize: 16.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [

                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                            height: 60.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Colors.orange,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, HomePage.routeName);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.arrow_back_outlined,
                                    color: Colors.black,
                                    size: 40.0,
                                  ),
                                  SizedBox(width: 10.0,),
                                  Text(
                                    'ย้อนกลับ', style: GoogleFonts.prompt(color: Colors.black, fontSize: 23.0,
                                  ),
                                  ),
                                ],
                              ),
                            )),
                        SizedBox(width: 30.0,),
                        Container(
                            height: 60.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Color(0xFF03878F),
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.all(Radius.circular(10.0)),
                            ),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  _province = _controller.text;
                                  if (_Select == 1) {
                                    _Type = 'ATTRACTION';
                                  } else if (_Select == 2) {
                                    _Type = 'ACCOMMODATION';
                                  } else if (_Select == 3) {
                                    _Type = 'RESTAURANT';
                                  } else if (_Select == 4) {
                                    _Type = 'SHOP';
                                  } else {
                                    _Type = 'OTHER';
                                  }
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => ListPlaceSearch(province: _province, type: _Type,)),);});},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.search, color: Colors.black, size: 40.0,),
                                  SizedBox(width: 10.0,),
                                  Text(
                                    'ค้นหา', style: GoogleFonts.prompt(color: Colors.black, fontSize: 23.0,
                                  ),
                                  ),
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}