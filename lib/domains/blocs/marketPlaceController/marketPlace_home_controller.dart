

import 'package:get/get.dart';

class MarketPlaceHomeController extends GetxController{

  List numbersProducts = [1,2,3,4,5];
  int currentPos = 0;


  onChangedIndex(index, reason){
    currentPos = index;
    update(["countsSlider"]);
  }

}