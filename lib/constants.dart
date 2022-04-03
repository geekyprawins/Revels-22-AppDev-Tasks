import 'package:flutter/cupertino.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Constants with ChangeNotifier {
  static final Map<String, String> quesAnd = {
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Lorem Ipsum simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry..':
        lorem(),
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry...':
        lorem(),
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.?':
        lorem(),
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry....':
        'answer6',
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.!':
        'answer7',
    ' Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        'answer8'
  };

  static const Color bgColor = Color.fromRGBO(33, 36, 43, 1);
  //Color(0xFF21424B);
  static const List<Color> shadesBgColor = [
    Color(0xFF172E34),
    Color(0xFF102125),
    Color(0xFF060D0F),
    Color(0xFF030607),
    Color(0xFF000000),
  ];

  static const Color tileBgColor = Color.fromARGB(255, 55, 60, 72);
  static const Color expandedTileColor = Color.fromARGB(255, 111, 121, 141);
  static const Color stackTileColor = Color.fromARGB(255, 125, 134, 155);

  static const List<Color> tintsBgColor = [
    Color(0xFF37545D),
    Color(0xFF798d93),
    Color(0xFFA6B3B7),
    Color(0xFFE8ECED),
    Color(0xFFFFFFFF),
  ];

  static final depressedNeumorphicEffect = NeumorphicStyle(
    depth: -8,
    intensity: 0.5,
    color: Constants.bgColor,
    shadowDarkColor: shadesBgColor[2],
    shadowLightColor: Constants.tintsBgColor[0],
    shadowLightColorEmboss: Constants.shadesBgColor[1],
    shadowDarkColorEmboss: Constants.shadesBgColor[3],
  );

  static const bottomSheetColor = Color.fromRGBO(55, 60, 72, 1);
  static const bottomSheetRadius = Radius.circular(70.0);

  static const Color darkShadow = Color.fromRGBO(0, 0, 0, 0.4);
  static const Color lightShadow = Color.fromRGBO(69, 73, 84, 0.2);
  static const Color underlineColor = Color.fromRGBO(255, 255, 255, 0.3);

  static final Color barrierColor = Colors.black.withOpacity(0.8);

  static const elevatedNeumorphicRadio = NeumorphicRadioStyle(
    shape: NeumorphicShape.flat,
    boxShape: NeumorphicBoxShape.circle(),
    selectedColor: Constants.darkShadow,
    unselectedColor: Constants.lightShadow,
    intensity: 0.4,
    unselectedDepth: 2,
    selectedDepth: -3,
  );

  static final elevatedNeumorphicEffect = NeumorphicStyle(
    shape: NeumorphicShape.convex,
    boxShape: NeumorphicBoxShape.roundRect(
      BorderRadius.circular(10.0),
    ),
    color: Constants.bgColor,
    // lightSource: LightSource.topLeft,
    intensity: 0.6,
    depth: 5,
    shadowDarkColor: Constants.darkShadow,
    shadowLightColor: Constants.lightShadow,
  );
  static final elevatedNeumorphicStyle = NeumorphicStyle(
      shape: NeumorphicShape.flat,
      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
      depth: 6,
      surfaceIntensity: 0.0,
      lightSource: LightSource.topLeft,
      color: Constants.bgColor,
      shadowDarkColor: Constants.darkShadow,
      shadowLightColor: Constants.lightShadow);

  static final dialogNeumorphicEffect = NeumorphicStyle(
    shape: NeumorphicShape.flat,
    color: Constants.bgColor,
    depth: 10.0,
    intensity: 0.65,
    shadowDarkColor: Constants.darkShadow,
    shadowLightColor: Constants.lightShadow,
    shadowDarkColorEmboss: Constants.darkShadow,
    shadowLightColorEmboss: Constants.lightShadow,
    boxShape: NeumorphicBoxShape.roundRect(
      BorderRadius.circular(15),
    ),
  );
}
