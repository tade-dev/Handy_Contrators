import 'package:card_swiper/card_swiper.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:handy_contractors/controller/app_state_controller.dart';
import 'package:handy_contractors/routes/app_route_names.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final AppStateController _appStateController = Get.put(AppStateController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppStateController>(
      builder: (controller) {
        return Scaffold(
          body: Container(
            height: Get.height,
            width: Get.width,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            color: Colors.white,
            child: SafeArea(
              child: Column(
                children: [
                  Expanded(
                    flex: 8,
                    child: Swiper(
                      itemCount: controller.onboardingSlides.length,
                      itemBuilder: (context, index) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            Text(
                              controller.onboardingSlides[index]["text"],
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              controller.onboardingSlides[index]["image"]
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              controller.onboardingSlides[index]["subText"],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                color: Color(0xffD9D9D9),
                                fontSize: 15,
                              ),
                            ),
                          ],
                        );
                      },
                      onIndexChanged: (value) {
                        controller.updateActiveIndexItem(value);
                      },
                    )
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        DotsIndicator(
                          dotsCount: controller.onboardingSlides.length,
                          position: controller.activeIndex.toDouble(),
                          decorator: const DotsDecorator(
                            color: Color(0xffD9D9D9), // Inactive color
                            activeColor: Color(0xff1B5299),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50,
                          width: Get.width,
                          child: TextButton(
                            onPressed: (){
                              (controller.activeIndex == 0)?
                              controller.updateActiveIndexItem(1)
                              :
                              (controller.activeIndex == 1)?
                              controller.updateActiveIndexItem(2)
                              :
                              Get.toNamed(loginScreen);
                            }, 
                            style: TextButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              backgroundColor: const Color(0xff1B5299)
                            ),
                            child: Text(
                              (controller.activeIndex == 2)?
                              "Get Started"
                              :
                              "Continue",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontFamily: "PoppinsMedium"
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}