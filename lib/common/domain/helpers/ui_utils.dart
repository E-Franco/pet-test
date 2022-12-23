import 'package:flutter/material.dart';

double widthPercentage(BuildContext context, double percentage){
  final size = (MediaQuery.of(context).size.width * percentage) / 100;
  return size;
}

double heightPercentage(BuildContext context, double percentage){
  final size = (MediaQuery.of(context).size.height * percentage) / 100;
  return size;
}