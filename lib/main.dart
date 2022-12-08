import "package:flutter/material.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final fntfamily = GoogleFonts.nunito().fontFamily;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Stack(
      children: [
        Positioned(
          child: Container(
            height: screenHeight,
            width: screenWidth,
            decoration: BoxDecoration(
              color: Color.fromRGBO(209, 229, 248, 10),
            ),
          ),
        ),
        Positioned(
            top: 0,
            left: 10,
            right: 10,
            child: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  )),
              actions: [
                /*    IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.align_horizontal_right,
                    )),*/
              ],
            )),
        Positioned(
            top: screenHeight * 0.10,
            left: (screenWidth - 200) / 2,
            right: (screenWidth - 200) / 2,
            child: Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://dbdzm869oupei.cloudfront.net/img/sticker/preview/4720.png"),
                    fit: BoxFit.contain),
              ),
            )),
        Positioned(
          left: 0,
          right: 0,
          bottom: 1,
          height: screenHeight * 0.50,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(28),
                  topRight: Radius.circular(28),
                )),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 24),
                        child: Text(
                          "Dr.shanakar",
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("Cardiology",
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.black,fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      SizedBox(width: 25,),
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 15,
                        itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                        itemBuilder: (context, _) => Icon(
                           Icons.star,
                          color: Colors.blue,
                        ),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      )
                    ],
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("JD hosptial Bengluru",
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.black.withOpacity(0.7))),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
                    child: Text("About Doctor",
                        style: GoogleFonts.poppins(
                            fontSize: 14, color: Colors.black87.withOpacity(0.9))),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.only(right: 24, left: 24),
                    child: Text(
                      "Dr.Jane FosterFoster is a long established fact that a reader will be distracted by thereadable content of a page.",
                      style:
                          TextStyle(color: Colors.black54, fontFamily: fntfamily),
                    ),
                  ),
                  SizedBox(height: 16),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 25),
                         child: Text("Fee",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),),
                       )

              ,Padding(
                padding: const EdgeInsets.only(right: 25),
                         child: Text("\$5",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w500),),
              )

                    ],
                  ),
                  SizedBox(height: 15),

                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 24, left: 24),
                      child: ElevatedButton(
                        child: Text(
                          "Appointment",
                          style: TextStyle(fontFamily: fntfamily),
                        ),
                        onPressed: () {},
                        style: ButtonStyle(
                          shadowColor: MaterialStateProperty.all(Colors.black),
                          elevation: MaterialStateProperty.all(2),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.blue.shade400),
                          foregroundColor:
                              MaterialStateProperty.all(Colors.white),
                          minimumSize: MaterialStateProperty.all(Size(370, 50)),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 15),

                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: screenHeight * 0.37,
            left: (screenWidth - 350) / 2,
            right: (screenWidth - 350) / 2,
            height: screenHeight * 0.26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Ink(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue,
                      child: Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.call,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Voice Call",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Ink(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue,
                      child: Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.video_call,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Video Call",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.white,
                  elevation: 5,
                  shadowColor: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Ink(
                    child: InkWell(
                      onTap: () {},
                      splashColor: Colors.blue,
                      child: Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.message,
                                color: Colors.blue,
                                size: 15,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                "Text Message",
                                style: GoogleFonts.poppins(
                                    fontSize: 12, color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ],
    ));
  }
}
/*Card(
              elevation: 28, //2
              shadowColor: Colors.lightBlue.shade100,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  /*gradient: LinearGradient(
                    colors: [
                      Colors.blue.shade200,
                      Colors.blue.shade300,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.0, 1.0],
                  ),*/
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    Center(
                        child: Text(
                      "Dr. Jane Foster",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: fntfamily),
                    )),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        " Senior Cardiologist and SurgeonUnited State medical college & hospital",
                        style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: fntfamily),
                      ),
                    )
                  ],
                ),
              ),
            )*/
// Color(0xFFEDF4FF);
