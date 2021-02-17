import 'package:aplikasi_lamongankuliner/models/district.dart';
import 'package:aplikasi_lamongankuliner/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DistrictCard extends StatelessWidget {
  final District district;
  DistrictCard(this.district);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: orangeExplore,
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  district.imageUrl,
                  width: 120,
                  height: 102,
                  fit: BoxFit.cover,

                ),
                district.isPopular
                    ? Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          width: 50,
                          height: 30,
                          decoration: BoxDecoration(
                              color: purpleColor,
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(36),
                              ),

                          ),

                          child: Center(
                            child: Image.asset(
                              'assets/images/Icon_star.png',
                              width: 22,
                              height: 22,
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
            SizedBox(
              height: 11,
            ),
            Text(
              district.name,
              style: blackTextStyle.copyWith(
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
