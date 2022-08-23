

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';


ThemeData apptheme = ThemeData(
  appBarTheme: AppBarTheme(
    systemOverlayStyle: SystemUiOverlayStyle.light
    
  )
  
);

double profilesize = 130;
  var focusedBorderColor = primary;
    const fillColor = Color.fromRGBO(243, 246, 249, 0);
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
        color: black_75,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(19),
        border: Border.all(color: primary),
        
      ),
    );

Color primary = Color(0xFFFF6B03);
Color secondary = const Color(0xFFECEDEF);
Color background = const Color(0xFFFF6B03);
Color purewhite = const Color(0xFFFFFFFF);


double defaultradius= 12;
BorderRadiusGeometry primaryradius= BorderRadius.all(Radius.circular(12));
BorderRadius circular_radius_primary = BorderRadius.circular(12);
/// button
/// text
Color greytext =  Colors.black.withOpacity(0.50);
/// 
Color greybutton =  Color(0xffECEDEF);
/// 
Color black_100 =  Colors.black;
Color black_75 =  Colors.black.withOpacity(0.75);
Color black_50 =  Colors.black.withOpacity(0.50);
Color black_25 =  Colors.black.withOpacity(0.25);
Color black_12 =  Colors.black.withOpacity(0.12);
Color black_4 =  Colors.black.withOpacity(0.04);

double screenPadding = 24;
EdgeInsetsGeometry screen_default_padding = EdgeInsets.all(24);
EdgeInsetsGeometry container_default_padding = EdgeInsets.all(24);

///heading
TextStyle header_h1 = TextStyle(
  fontSize: 40  
);
TextStyle header_h2 = TextStyle(
  fontSize: 32 
);
TextStyle header_h3 = TextStyle(
  fontSize: 28 
);
TextStyle header_h4 = TextStyle(
  fontSize: 20 
);
TextStyle header_h5 = TextStyle(
  fontSize: 16 
);
TextStyle header_h6 = TextStyle(
  fontSize: 12 
);


TextStyle bodytext_h1 = TextStyle(
  fontSize: 20 
);

TextStyle bodytext_h2 = TextStyle(
      fontSize: 16
);

TextStyle bodytext_h3 = TextStyle(
  fontSize: 14
);

TextStyle bodytext_h4 = TextStyle(
  fontSize: 13 
);

TextStyle bodytext_h5 = TextStyle(
  fontSize: 12 
);
TextStyle bodytext_h6 = TextStyle(
  fontSize: 10 
);

