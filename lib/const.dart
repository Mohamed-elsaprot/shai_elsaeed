import 'dart:ui';

String mealImage='https://static.vecteezy.com/system/resources/previews/025/521/387/non_2x/tasty-burger-meal-with-fries-photo.jpg';
String testDishImage='https://img.freepik.com/premium-photo/nigerian-beans-porridge-nigerian-dish-plate-white-background-directly-view_864588-12608.jpg';

// const String fontFamily = 'Tajawal';
const String fontFamily = 'Cairo';

extension HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${alpha.toRadixString(16).padLeft(2, '0')}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}