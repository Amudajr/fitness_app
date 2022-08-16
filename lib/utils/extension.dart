import 'package:flutter/material.dart';
import 'package:fit/utils/utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

extension MainX on BuildContext {

  void back() => Navigator.of(this).pop();
  
  void replace(String pageName) =>
      Navigator.of(this).pushReplacementNamed(pageName);

  void push(String pageName) => Navigator.of(this).pushNamed(pageName);
  
}