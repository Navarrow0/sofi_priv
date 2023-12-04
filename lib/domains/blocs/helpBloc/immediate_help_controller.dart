

import 'package:get/get.dart';

class ImmediateHelpController extends GetxController{

  bool isKnowMore = false, isHeightKnowMore = false;

  bool isTapped = true;
  bool isExpanded = false;

  isPressedKnowMore(){
    isTapped = !isTapped;
    update(["servicesForYou"]);
  }

  endAnimation(){
    isKnowMore = !isKnowMore;
    update(["servicesForYou"]);
  }
}