import 'package:flutter/material.dart';
import 'package:pageviewonboarding/widgets/customtextstyle.dart';

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
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(90.0)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(5.0, 7.0),
                    color: Colors.black26,
                    blurRadius: 12.0,
                    spreadRadius: 3.0,
                  )
                ]
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 28.0
                ),
                child: Image(
                  image: AssetImage(image),    //in "assets/images/placeholder1.png" format
                  fit: BoxFit.contain,
                  width: MediaQuery.of(context).size.width * 0.65,
                ),
              ),
            ),
            const SizedBox(
              height: 60.0,
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
