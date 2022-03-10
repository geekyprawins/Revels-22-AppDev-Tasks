import 'package:flutter/cupertino.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class Constants with ChangeNotifier {
  static final Map<String, String> quesAnd = {
    'Question 1,Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Question 2 ,Lorem Ipsum simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Question 3, Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Question 4, Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Question 5, Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Question 6, Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Question 7, Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        lorem(),
    'Question 8, Lorem Ipsum is simply dummy text of the printing and typesetting industry.':
        lorem()
  };

  static const Color bgColor = Color(0xFF21424B);
  static const List<Color> shadesBgColor = [
    Color(0xFF172E34),
    Color(0xFF102125),
    Color(0xFF060D0F),
    Color(0xFF030607),
    Color(0xFF000000),
  ];
  static const List<Color> tintsBgColor = [
    Color(0xFF37545D),
    Color(0xFF798d93),
    Color(0xFFA6B3B7),
    Color(0xFFE8ECED),
    Color(0xFFFFFFFF),
  ];
}
