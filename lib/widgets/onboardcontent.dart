import 'package:flutter/material.dart';
import 'package:pageviewonboarding/widgets/customtextstyle.dart';

final double mockupWidth = 412.0;
final double mockupHeight = 732.0;


class OnboardContent extends StatelessWidget {
  final String image;
  final String title;
  final String subheading;

  const OnboardContent({
    Key? key,
    required this.image,
    required this.title,
    required this.subheading
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double widthScale = screenWidth / mockupWidth;
    final double heightScale = screenHeight / mockupHeight;

    return Container(
      child: Padding(
        padding: EdgeInsets.all(20.0 * (widthScale * 2)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16.0 * widthScale,
                vertical: 16.0 * heightScale
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(110.0 * widthScale)),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(5.0, 7.0),
                    color: Color.fromRGBO(117, 14, 235, 0.3),
                    blurRadius: 10.0,
                    spreadRadius: 1.0,
                  )
                ]
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 14.0 * widthScale,
                  vertical: 28.0 * heightScale
                ),
                child: Image(
                  image: AssetImage(image),    //in "assets/images/placeholder1.png" format
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
              ),
            ),
            SizedBox(
              height: 60.0 * heightScale,
            ),
            TextHeader(
                text: title
            ),
            TextParag(
              text: subheading,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
