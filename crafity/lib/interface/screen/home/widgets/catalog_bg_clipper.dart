import 'package:flutter/material.dart';

class CatalogBgClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();    
    
    var axis100 = Offset(size.width, size.height);
    var axis75 = Offset(size.width * .75, size.height * .75);   
    var axis50 = Offset(size.width * .5, size.height * .5); 
    var axis25 = Offset(size.width * .25, size.height * .25);    
       
    path.moveTo(0, axis50.dy * 1.1);    
    path.quadraticBezierTo(size.width * .02, size.height * .76, size.width * .2, axis75.dy);
    path.quadraticBezierTo(size.width * .2, axis75.dy, axis25.dx, size.height * .74);
    path.quadraticBezierTo(size.width * .7, size.height * .6, axis75.dx, axis75.dy); 
    path.quadraticBezierTo(size.width * .8, size.height * .84, size.width * .8, axis100.dy); 
    path.quadraticBezierTo(axis100.dx, size.height * .8, size.width * .99, axis50.dy * 1.1);
    path.quadraticBezierTo(size.width * .99, axis50.dy, size.width * .98, size.height * .42);
        path.quadraticBezierTo(size.width * .9, size.height * .04, size.width * .52, 0);
    path.quadraticBezierTo(size.width * .52, 0, size.width * .48, 0);
    path.quadraticBezierTo(size.width * .03, size.height * .04, 0, size.height * .45);    
    path.close();

    return path;
  }
 
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}