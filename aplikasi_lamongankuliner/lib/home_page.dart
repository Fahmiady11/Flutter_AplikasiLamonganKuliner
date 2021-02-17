import 'package:aplikasi_lamongankuliner/models/district.dart';
import 'package:aplikasi_lamongankuliner/models/space.dart';
import 'package:aplikasi_lamongankuliner/theme.dart';
import 'package:aplikasi_lamongankuliner/widget/bottomNavbarItem.dart';
import 'package:aplikasi_lamongankuliner/widget/district_card.dart';
import 'package:aplikasi_lamongankuliner/widget/space_card.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 24,
        horizontal: 24,
        ),
          child: ListView(
            children: [
              Text(
                'Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                ),
              ),
              SizedBox(height: 2,),
              Text('Mencari Rumah Makan',
              style:greyTextStyle,),
              SizedBox(height: 30,),
              Text(
                'Kecamatan Populer',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: 24),
                    DistrictCard(District(
                        id: 1,
                        name: 'Solokuro',
                        imageUrl: 'assets/images/banyubang.jpg')),
                    SizedBox(
                      width: 20,
                    ),
                    DistrictCard(District(
                        id: 2,
                        isPopular: true,
                        name: 'Lamongan',
                        imageUrl: 'assets/images/lamongan.jpg')),
                    SizedBox(
                      width: 20,
                    ),
                    DistrictCard(District(
                        id: 3,
                        name: 'Paciran',
                        imageUrl: 'assets/images/paciran.jpg')),
                    SizedBox(
                      width: 24,
                    ),
                  ],
                ),


              ),
              SizedBox(height: 30,),
              //Note:RECOMMENDED SPACE
              Text(
                'Rekomendasi Rumah makan',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Column(children: [
                SpaceCard(
                  Space(
                    id: 1,
                    name: 'RM Asri',
                    imageUrl: 'assets/images/food.png',
                    village: 'Bluri',
                    subDistrict: 'Solokuro',
                    price: '6k-15k',
                    rating: 4,
                    phone: '08587912131',
                    mapUrl: 'https://goo.gl/maps/FJKo8tKKunsjGvLN7',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SpaceCard(
                  Space(
                    id: 2,
                    name: 'RM Jaya',
                    imageUrl: 'assets/images/food.png',
                    village: 'Banyubang',
                    subDistrict: 'Solokuro',
                    price: '6k-20k',
                    rating: 5,
                    phone: '08587912131',
                      mapUrl: 'https://goo.gl/maps/FJKo8tKKunsjGvLN7',
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SpaceCard(
                  Space(
                    id: 3,
                    name: 'RM agung',
                    imageUrl: 'assets/images/food.png',
                    village: 'jeruk',
                    subDistrict: 'Lamongan',
                    price: '8k-15k',
                    rating: 3,
                    phone: '08587912131',
                      mapUrl: 'https://goo.gl/maps/FJKo8tKKunsjGvLN7'
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SpaceCard(
                  Space(
                    id: 4,
                    name: 'RM Samudra',
                    imageUrl: 'assets/images/food.png',
                    village: 'kranji',
                    subDistrict: 'Paciran',
                    price: '9k-20k',
                    rating: 5,
                    phone: '08587912131',
                      mapUrl: 'https://goo.gl/maps/FJKo8tKKunsjGvLN7'
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
              ],),

            ],
          ),
      ),

    ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbar(
              imageUrl: 'assets/images/Icon_home_solid.png',
              isActive: true,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_mail_solid.png',
              isActive: false,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_card_solid.png',
              isActive: false,
            ),
            BottomNavbar(
              imageUrl: 'assets/images/Icon_love_solid.png',
              isActive: false,
            ),
          ],
        ),
      ),
    );
  }
}
