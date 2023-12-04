import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  PageController pageController = new PageController(initialPage: 0);

  int bottomSelectedIndex = 0;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  @override
  void dispose() {
    super.dispose();
  }


  void pageChanged(int index) {
    bottomSelectedIndex = index;
    update();
  }

  void bottomTapped(int index) {
    bottomSelectedIndex = index;
    pageController.animateToPage(index, duration: Duration(milliseconds: 500), curve: Curves.ease);
    update();
  }

}