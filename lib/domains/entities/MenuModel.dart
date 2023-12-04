import 'package:flutter/material.dart';

class MenuModel {
  const MenuModel({this.title, this.icon, this.onTap});
  final String? title;
  final IconData? icon;
  final Function()? onTap;
}