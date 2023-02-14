import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models.dart';
import '../../modules/date_time_page.dart';
import 'components/cast card.dart';
import 'components/genre.dart';

class Screen extends StatelessWidget {
  final Movie movie;

  const Screen({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        //poster and rating
        Container(
          height: 400,
          color: Colors.white,
          child: Stack(
            children: [
              //poster
              Container(
                height: 360,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(50)),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    //-------poster image--------
                    image: AssetImage(
                      "assets/images/Confessions.jpg",
                    ),
                  ),
                ),
              ),
              //rating
              Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  height: 80,
                  width: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      topLeft: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 50,
                        color: Color(0xFF12153D).withOpacity(0.2),
                      )
                    ],
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(height: kDefaultPadding / 4),
                            RichText(
                              text: TextSpan(
                                style: TextStyle(color: Colors.black),
                                children: [
                                  TextSpan(
                                    //----------movie ratinggg----------
                                    text: "8.2/",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: kTextColor),
                                  ),
                                  TextSpan(text: "10\n"),
                                  TextSpan(
                                    text: "150,212",
                                    style: TextStyle(color: kTextLightColor),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 50,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.indigo),
                                shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(10),
                                      bottomRight: Radius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => DateTimePage()));
                              },
                              child: Icon(
                                Icons.add,
                                size: 20,
                                color: Colors.white,
                              )),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        //elbakyy
        Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //---- Title and Time-----
                Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //*****title of movie********
                      Text(
                        "confessjgy",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 30,
                          color: kTextColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(height: kDefaultPadding / 2),
                      Row(
                        children: [
                          //**** movie year*****
                          Text("2020",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: kTextLightColor,
                                decoration: TextDecoration.none,
                              )),
                          SizedBox(
                            width: kDefaultPadding,
                          ),
                          //*****PG*******
                          Text("PG-21",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: kTextLightColor,
                                decoration: TextDecoration.none,
                              )),
                          SizedBox(
                            width: kDefaultPadding,
                          ),
                          //*****hours*******
                          Text("2h 32min",
                              style: TextStyle(
                                fontWeight: FontWeight.w300,
                                fontSize: 15,
                                color: kTextLightColor,
                                decoration: TextDecoration.none,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
                //--- genre -----
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                    child: Expanded(
                      child: SizedBox(
                        height: 36,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            //---movie.genra.length-----
                            itemCount: 3,
                            itemBuilder: (context, index) => Genre(
                                  genre: "darama",
                                  //genre: movie.genra[index],
                                )),
                      ),
                    )),

                // ----plot summary----
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: kDefaultPadding / 2,
                    horizontal: kDefaultPadding,
                  ),
                  child: Text(
                    "Plot Summar",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 30,
                      color: kTextColor,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                  ),

                  //------- movie plot -----
                  child: Text(
                    "Two detectives are called to a small mining town in the Asturian mountains where a young woman who had been left for dead for months has suddenly appeared, leaving the detectives to question what dark forces are at work.",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                      color: Color(0xFF737599),
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),

                //----Cast-----
                // CastAndCrew(casts: movie.cast)
                Padding(
                  padding: EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Cast & Crew",
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 30,
                          color: kTextColor,
                          decoration: TextDecoration.none,
                        ),
                      ),
                      SizedBox(
                        height: kDefaultPadding,
                      ),
                      SizedBox(
                        height: 160,
                        child: ListView.builder(
                            itemCount: movie.cast.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => CastCard(
                                  cast: movie.cast[index],
                                )),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ],
    ));
  }
}
