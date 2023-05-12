import 'package:get/get.dart';

class AppStateController extends GetxController{
  // INSTANT VARIABLES
  int _activeIndex = 0;
  final List<Map<String, dynamic>> _onboardingSlides = [
    {
      "text": "A community where blue collar workers find jobs easily",
      "image": "images/connectWork.png",
      "subText": "This platform helps blue collar worker get connected to contractors looking for various services",
    },
    {
      "text": "Get recommended to contractors based on your profile or past work rating",
      "image": "images/recommendWork.png",
      "subText": "Workers can get recommended to contractors based on there past work ratings and also according to the workers profile",
    },
    {
      "text": "Get paid after work done according to hours worked",
      "image": "images/payWork.png",
      "subText": "Workers will get paid according to how many hours they have worked.",
    },
  ];

  // GETTERS
  int get activeIndex => _activeIndex;
  List<Map<String, dynamic>> get onboardingSlides => _onboardingSlides;

  // SETTERS
  updateActiveIndexItem(value) {
    _activeIndex = value;
    update();
  }
}