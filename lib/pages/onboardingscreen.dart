import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:pageviewonboarding/widgets/onboardcontent.dart';
import 'package:pageviewonboarding/widgets/customtextbutton.dart';
import 'package:pageviewonboarding/widgets/customtextstyle.dart';

const double mockupWidth = 412.0;
const double mockupHeight = 732.0;

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  int pageIndex = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final double screenWidth = MediaQuery.of(context).size.width;
    final double screenHeight = MediaQuery.of(context).size.height;

    final double widthScale = screenWidth / mockupWidth;
    final double heightScale = screenHeight / mockupHeight;

    return Scaffold(
      backgroundColor: Color(0XFFEBDAF5),
      body: PageView(
        controller: controller,
        onPageChanged: (index){
          setState(() {
            pageIndex = index;
          });
        },
        physics: const NeverScrollableScrollPhysics(),
        children: const [
          OnboardContent(
              image: "assets/images/placeholder1.png",
              title: "Page 1",
              subheading: "This is the screen you'll see in the first page when you enter in this onboarding screen I have created."
          ),
          OnboardContent(
              image: "assets/images/placeholder2.png",
              title: "Page 2",
              subheading: "This is the screen you'll see in the second page when you enter in this onboarding screen I have created."
          ),
          OnboardContent(
              image: "assets/images/placeholder3.png",
              title: "Page 3",
              subheading: "This is the screen you'll see in the third page when you enter in this onboarding screen I have created."
          ),
          OnboardContent(
              image: "assets/images/placeholder4.png",
              title: "Page 4",
              subheading: "This is the screen you'll see in the fourth page when you enter in this onboarding screen I have created."
          ),
        ],
      ),
      bottomSheet: Container(
        height: 70.0 * heightScale,
        decoration: const BoxDecoration(
          color: Color(0XFFEBDAF5)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 110.0 * widthScale,
              child: pageIndex == 0
                  ?
              SizedBox()
                  :
              CustomTextButton(
                  displayText: "Back",
                  onPressed: () => controller.previousPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut)
              ),
            ),
            SmoothPageIndicator(
              controller: controller,
              count: 4,
              effect: JumpingDotEffect(
                activeDotColor: Color(0xFF750EEB),
                dotColor: Colors.white,
                dotWidth: 16.0 * widthScale,
                dotHeight: 16.0 * widthScale,
                jumpScale: 1.0,
                spacing: 6.0 * widthScale
              ),
            ),
            SizedBox(
              width: 110.0 * widthScale,
              child: pageIndex == 3
                  ?
              CustomTextButton(
                displayText: "Let's go!",
                onPressed: () => null
              )
                  :
              CustomTextButton(
                displayText: "Next",
                onPressed: () => controller.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
