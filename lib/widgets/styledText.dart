import 'package:flutter/material.dart';

Text styledText(String data,{color: Colors.white, fontSize: 17.0, fontStyle: FontStyle.italic, textAlign: TextAlign.center }){
  return new Text(
    data,
    textAlign: textAlign,
    style: new TextStyle(
      color: color,
      fontStyle: fontStyle,
      fontSize: fontSize
    ),
  );
}