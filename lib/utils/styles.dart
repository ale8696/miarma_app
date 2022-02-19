import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {

  // Padding
  static const EdgeInsets profileHeader = EdgeInsets.all(8);
  
  static const EdgeInsets profileHeaderSpaces = EdgeInsets.only(left: 8);


  // TextStyle
  static TextStyle get profileName => GoogleFonts.getFont(
    'Lato',
    fontSize: 14,
    fontWeight: FontWeight.bold
  );

  static TextStyle get profileSubheader => GoogleFonts.getFont(
    'Lato',
    fontSize: 12,
    color: Colors.grey
  );

  static TextStyle get profileDescription => GoogleFonts.getFont(
    'Lato',
    fontSize: 12,
  );
  
  static TextStyle get profileNum => GoogleFonts.getFont(
    'Lato',
    fontSize: 15,
    fontWeight: FontWeight.bold
  );

  static TextStyle get profileNumDesc => GoogleFonts.getFont(
    'Lato',
    fontSize: 12,
    color: Colors.grey
  );

}