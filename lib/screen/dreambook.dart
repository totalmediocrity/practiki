import 'package:flutter/material.dart';
import 'package:practiki/com/my_color.dart';

class DreamPlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildDream(),
      backgroundColor: MyColors.milk,
    );
  }

  Widget _buildDream() {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
          const Padding(padding: EdgeInsets.only(top: 53)),
          Stack(
            alignment: Alignment.topCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Image.asset("assets/yellphone.png",
                    width: 343, height: 231, fit: BoxFit.cover),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Image.asset("assets/humback.png", width: 370, height: 245),
                  ],
                ),
              ),
            ],
          ),
          TitlePlay(),
        ])));
  }
}

class TitlePlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 26, right: 26),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Peter Mach',
            style: TextStyle(
              fontSize: 12,
              fontFamily: 'Plus Jakarta Sans',
              color: MyColors.black.withOpacity(0.5),
              fontWeight: FontWeight.normal,
            ),
          ),
          SizedBox(height: 4),
          Text(
            textAlign: TextAlign.right,
            'Mind Deep Relax',
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'Plus Jakarta Sans',
              color: MyColors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.left,
            'Join the Community as we prepare over 33 days\nto relax and feel joy with the mind and happnies\nsession across the World.',
            style: TextStyle(
              height: 1.3,
              fontSize: 15,
              fontFamily: 'Plus Jakarta Sans',
              color: MyColors.black,
              fontWeight: FontWeight.w400,
            ),
            softWrap: true,
          ),
          SizedBox(height: 24),
          Container(
            decoration: BoxDecoration(
              color: MyColors.darkcyan,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(84, 20, 14, 18),
                  child: Image.asset(
                    "assets/icon/shape.png",
                    width: 10.2,
                    height: 12,
                  ),
                ),
                Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Play Next Session',
                          style: TextStyle(
                            color: MyColors.milk,
                            fontFamily: 'Plus Jakarta Sans',
                            fontSize: 17.0,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    width: 1.0, color: MyColors.grey.withOpacity(0.3)),
              ),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.persy,
                  ),
                  width: 42,
                  height: 42,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 15, 15, 15),
                        child: Image.asset(
                          "assets/icon/shape.png",
                          width: 10.5,
                          height: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sweet Memories',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Plus Jakarta Sans',
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'December 29 Pre-Launch',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          color: MyColors.black.withOpacity(0.5),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 2, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 2, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 20, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    width: 1.0, color: MyColors.grey.withOpacity(0.3)),
              ),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.darkcyan,
                  ),
                  width: 42,
                  height: 42,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 15, 15, 15),
                        child: Image.asset(
                          "assets/icon/shape.png",
                          width: 10.5,
                          height: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'A Day Dream',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Plus Jakarta Sans',
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'December 29 Pre-Launch',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          color: MyColors.black.withOpacity(0.5),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 2, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 2, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 20, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Container(
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    width: 1.0, color: MyColors.grey.withOpacity(0.3)),
              ),
            ),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: MyColors.annabeth,
                  ),
                  width: 42,
                  height: 42,
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(16, 15, 15, 15),
                        child: Image.asset(
                          "assets/icon/shape.png",
                          width: 10.5,
                          height: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 13),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mind Explore',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontFamily: 'Plus Jakarta Sans',
                          color: MyColors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        'December 29 Pre-Launch',
                        style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Plus Jakarta Sans',
                          color: MyColors.black.withOpacity(0.5),
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 2, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 2, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(2, 28, 20, 28),
                  child: GestureDetector(
                    child: ClipOval(
                      child: Container(
                        color: MyColors.grey,
                        height: 6,
                        width: 6,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
