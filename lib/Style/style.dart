import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

const colorRed=Color.fromRGBO (231, 28, 36, 1);
const colorGreen=Color.fromRGBO(33, 191, 115, 1);
const colorWhite=Color.fromRGBO(255, 255, 255, 1);
const colorDarkBlue=Color.fromRGBO(44, 62, 80, 1);

InputDecoration AppInputDecoration(label){
  return InputDecoration(
    focusedBorder: const OutlineInputBorder(
      borderSide: const BorderSide(color: colorGreen,width: 0)
    ),
border: OutlineInputBorder(),
    labelText: label

  );
}
