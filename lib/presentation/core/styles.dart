import 'package:flutter/material.dart';
import 'package:sajda_shop/presentation/core/utils/color_constants.dart';

InputDecoration get appTextFieldInputDecoration=>InputDecoration(
  isDense: true,
  prefixIconConstraints: BoxConstraints.tight(const Size(48,24)),
  suffixIconConstraints: BoxConstraints.tight(const Size(48,24)),
  enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorConstants.defaultBorderColor, width: 1),borderRadius: BorderRadius.circular(8)),
  focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: ColorConstants.defaultBorderColor,width: 1),borderRadius: BorderRadius.circular(8)),
  errorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: 1),borderRadius: BorderRadius.circular(8)),
  focusedErrorBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.red, width: 1),borderRadius: BorderRadius.circular(8)),
);
ButtonStyle  get appElevatedButtonStyle =>ElevatedButton.styleFrom(
  elevation: 0,
  backgroundColor: ColorConstants.primaryColor,
  shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)),
  minimumSize: const Size(double.infinity, 50),
  // fixedSize: Size(double.infinity, 40)
);
ButtonStyle  get appTextButtonStyle =>TextButton.styleFrom(
  elevation: 0,
  backgroundColor: Colors.transparent,
  shape: RoundedRectangleBorder(
      side: const BorderSide(color: ColorConstants.primaryColor,width: 1),
      borderRadius: BorderRadius.circular(12)),
  minimumSize: const Size(double.infinity, 50),
  // fixedSize: Size(double.infinity, 40)
);