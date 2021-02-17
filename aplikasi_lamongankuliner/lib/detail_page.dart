import 'package:aplikasi_lamongankuliner/error_page.dart';
import 'package:aplikasi_lamongankuliner/models/space.dart';
import 'package:aplikasi_lamongankuliner/widget/rating_item.dart';
import 'package:flutter/material.dart';
import 'theme.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final Space space;
  DetailPage(this.space);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool _isFavorited = true;
  @override
  Widget build(BuildContext context) {
    //URL
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        //Note:errorPage
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    Future<void> showConfirm() async {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Konfirmasi'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    Text('Apakah kamu ingin menghubungi pemilik kos?'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: Text('Batal'),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                  child: Text('Hubungi'),
                  onPressed: () {
                    Navigator.of(context).pop();
                    launchUrl('tel:${widget.space.phone}');
                  },
                ),
              ],
            );
          });
    }

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              widget.space.imageUrl,
              height: 350,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: whiteColor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.space.name,
                                  style: blackTextStyle.copyWith(
                                    fontSize: 22,
                                  ),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: '\$ ${widget.space.price}',
                                      style: purpleTextStyle.copyWith(
                                        fontSize: 16,
                                      ),
                                      children: [
                                        TextSpan(
                                          text: ' / Porsi',
                                          style: greyTextStyle.copyWith(
                                            fontSize: 16,
                                          ),
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 0.5),
                              child: Row(
                                children: [
                                  RatingItem(
                                    index: 1,
                                    rating: widget.space.rating,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  RatingItem(
                                    index: 2,
                                    rating: widget.space.rating,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  RatingItem(
                                    index: 3,
                                    rating: widget.space.rating,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  RatingItem(
                                    index: 4,
                                    rating: widget.space.rating,
                                  ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  RatingItem(
                                    index: 5,
                                    rating: widget.space.rating,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      //NOTE:MAIN FACILITY

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Image.asset('assets/images/fork.png',
                        width: 36,),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      //NOTE:PHOTO

                      Container(
                        height: 115,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:
                          [
                            SizedBox(
                              width: 24,
                            ),
                          Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(16),
                              child:Image.asset(
                                  'assets/images/food.png',
                                  width: 120,
                                  height: 88,
                                  fit: BoxFit.cover,
                                ),
                            ),
                            SizedBox(height: 6,),
                            Text('Nasi rawon',style: greyTextStyle.copyWith(
                              fontSize: 12,
                            ),),
                          ],
                        ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child:Image.asset(
                                    'assets/images/food.png',
                                    width: 120,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 6,),
                                Text('Soto Ayam',style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child:Image.asset(
                                    'assets/images/food.png',
                                    width: 120,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 6,),
                                Text('Nasi goreng',style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
         /////////////////////////////////////////////////
                      SizedBox(
                        height: 28,
                      ),
                      //NOTE:MAIN FACILITY

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Image.asset('assets/images/cocktail.png',
                          width: 36,),
                      ),
                      SizedBox(
                        height: 19,
                      ),
                      //NOTE:PHOTO
                      Container(
                        height: 115,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children:
                          [
                            SizedBox(
                              width: 24,
                            ),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child:Image.asset(
                                    'assets/images/drinkk.jpg',
                                    width: 120,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 6,),
                                Text('Es teh',style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child:Image.asset(
                                    'assets/images/drinkk.jpg',
                                    width: 120,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 6,),
                                Text('Es jeruk',style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child:Image.asset(
                                    'assets/images/drinkk.jpg',
                                    width: 120,
                                    height: 88,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(height: 6,),
                                Text('Es degan',style: greyTextStyle.copyWith(
                                  fontSize: 12,
                                ),),
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //Note:location
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regulerTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${widget.space.village}\n${widget.space.subDistrict}',
                              style: greyTextStyle,
                            ),
                            InkWell(
                              onTap: () {
                                launchUrl('${widget.space.mapUrl}');
                              },
                              child: Image.asset(
                                'assets/images/Icon_location_solid.png',
                                width: 22,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width - (2 * edge),
                          child: RaisedButton(
                            onPressed: () {
                              showConfirm();
                            },
                            color: purpleColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Text(
                              'Book Now',
                              style: whiteTextStyle.copyWith(
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      width: 40,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _isFavorited = !_isFavorited;
                      });
                    },
                    child: Image.asset(
                      _isFavorited
                          ? 'assets/images/btn_wishlist.png'
                          : 'assets/images/btn_wishlist_orange.png',
                      width: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
