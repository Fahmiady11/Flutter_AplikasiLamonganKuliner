import 'package:aplikasi_lamongankuliner/home_page.dart';
import 'package:aplikasi_lamongankuliner/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 15.0, left: 24.0),
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/logo.png')),
                  ),
                ),
                SizedBox(
                  height: 1,
                ),
                Container(
                  height:MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: blueSplash,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                  ),
                  child: Padding(
                    padding:EdgeInsets.only(left:24,top: 34),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Lamongan\nKuliner',
                        style: blackTextStyle.copyWith(fontSize: 46,
                        fontWeight:FontWeight.w500),
                        ),
                        SizedBox(height: 1,
                        ),
                        Text('Platform Mencari\nRumah makan se-Lamongan',
                        style: whiteTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,

                        ),),
                        SizedBox(height: 52,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 24),
                          child: Center(
                            child: Image.asset('assets/images/gambarUtama.png',
                            width: 371,
                            height: 255,),
                          ),
                        ),
                        SizedBox(height: 53,
                        ),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 24),
                            child: Container(
                              height: 50,
                              width: 210,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                color: orangeExplore,
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  'Explore Now',
                                  style: whiteTextStyle.copyWith(fontSize: 18),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
