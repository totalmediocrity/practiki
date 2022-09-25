import 'package:flutter/material.dart';
import 'package:practiki/com/my_color.dart';

class Atlantic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _SecretAt(),
      backgroundColor: MyColors.milk,
    );
  }

  Widget _SecretAt() {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
        color: MyColors.milk,
        width: 14,
      )),
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: MyColors.ligpd,
                    image: const DecorationImage(
                      image: AssetImage("assets/kit.png"),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                height: 410.21,
                width: 513,
              ),
              SizedBox(height: 20),
              Text(
                'Secrets of Atlantis',
                style: TextStyle(
                  fontSize: 34.81,
                  fontFamily: 'Montserrat',
                  color: MyColors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: MyColors.milk,
                    side: BorderSide(color: MyColors.carrot, width: 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.fromLTRB(34, 15, 34, 15),
                  ),
                  child: Text(
                    'Follow',
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: 'Montserrat',
                      color: MyColors.carrot,
                      fontWeight: FontWeight.w600,
                    ),
                  )),
              SizedBox(height: 28),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Container(
                  width: 416.42,
                  height: 200.4,
                  padding: EdgeInsets.fromLTRB(19.40, 0, 19.84, 50),
                  decoration: BoxDecoration(
                      color: MyColors.pirp,
                      border: Border.all(),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Row(
                    children: [
                      Container(
                        child: Image.asset(
                          width: 59.67,
                          height: 59.67,
                          "assets/icon/codin.png",
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 35, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Codin',
                                style: TextStyle(
                                  fontSize: 16.16,
                                  fontFamily: 'Montserrat',
                                  color: MyColors.milk,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Container(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 1, 10, 1),
                                decoration: BoxDecoration(
                                  color: MyColors.dp,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  'Host',
                                  style: TextStyle(
                                    fontSize: 14.92,
                                    fontFamily: 'Montserrat',
                                    color: MyColors.milk,
                                    fontWeight: FontWeight.w500,
                                    height: 1.3,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                            ],
                          )),
                      Container(
                        child: Text(
                          'The Secrets of Atlantis podcast is\ndesigned for all fantasy\nenthusiasts, everything from\ndebunking underwat... see more',
                          style: TextStyle(
                            height: 1.5,
                            fontSize: 13.67,
                            fontFamily: 'Montserrat',
                            color: MyColors.milk,
                            fontWeight: FontWeight.w600,
                          ),
                          softWrap: true,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 100),
              Container(
                width: 367,
                height: 136,
                child: Row(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                          child: Image.asset("assets/backfig.png"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 45, left: 17),
                          child: Row(children: [
                            Image.asset("assets/smile.png"),
                            SizedBox(width: 110),
                            Text(
                              'Invite your\nfriends to join',
                              style: TextStyle(
                                fontSize: 17.4,
                                fontFamily: 'Montserrat',
                                color: MyColors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(width: 30),
                            Image.asset("assets/icon/chim.png")
                          ]),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 44,
            top: 680.30,
            child: RaisedButton(
              color: MyColors.ppp,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    '4.8',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Calibri',
                      color: MyColors.milk,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(width: 4),
                  Image.asset(
                    "assets/icon/star.png",
                    width: 12.43,
                    height: 12.43,
                  ),
                  SizedBox(width: 4),
                  Text(
                    '(10)',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Calibri',
                      color: MyColors.milk.withOpacity(0.5),
                      fontWeight: FontWeight.w600,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 140,
            top: 680.30,
            child: RaisedButton(
              color: MyColors.ppp,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              onPressed: () {},
              child: Row(
                children: <Widget>[
                  Text(
                    'Fantasy',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Calibri',
                      color: MyColors.milk,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              right: 50,
              top: 680.30,
              child: Image.asset(
                "assets/icon/bell.png",
                width: 29.83,
                height: 29.83,
              )),
          Positioned(
              left: 20,
              top: 720,
              right: 19,
              child: Container(
                width: 416.42,
                height: 88,
                decoration: BoxDecoration(
                    color: MyColors.wow,
                    border: Border.all(),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )),
              )),
          Positioned(
            top: 730,
            left: 43,
            child: Row(children: <Widget>[
              Image.asset(
                "assets/icon/hum1.png",
              ),
              Image.asset(
                "assets/icon/hum2.png",
              ),
              Image.asset(
                "assets/icon/hum3.png",
              ),
              Image.asset(
                "assets/icon/hum4.png",
              ),
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: MyColors.carrot,
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: const EdgeInsets.fromLTRB(8, 10, 0, 10),
                child: Text(
                  '+10',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Montserrat',
                    color: MyColors.milk,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
              SizedBox(width: 50),
              Image.asset(
                "assets/icon/signal.png",
                width: 59.67,
                height: 59.67,
              ),
              Container(
                child: Text(
                  'Live',
                  style: TextStyle(
                    fontSize: 19.89,
                    fontFamily: 'Calibri',
                    color: MyColors.darkor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ]),
          ),
          Positioned(
            top: 860,
            left: 110,
            child: Image.asset("assets/see.png"),
          ),
          Positioned(
              top: 300,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30),
                  ),
                  Container(
                    width: 438,
                    height: 93,
                    decoration: BoxDecoration(
                      color: MyColors.milk,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.elliptical(3200, 1100),
                        topRight: Radius.elliptical(3200, 1100),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: MyColors.bel1,
                          width: 10,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                          primary: MyColors.carrot,
                          onPrimary: MyColors.milk,
                          fixedSize: Size(30, 30),
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                        ),
                        child: Image.asset(
                          "assets/icon/play.png",
                          width: 50,
                          height: 50,
                          alignment: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Positioned(
            top: 43,
            left: 20,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: MyColors.back,
                  borderRadius: BorderRadius.circular(30)),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  primary: MyColors.back,
                  onPrimary: MyColors.milk,
                ),
                child: Image.asset(
                  "assets/back.png",
                  width: 50,
                  height: 50,
                  alignment: Alignment.centerRight,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
