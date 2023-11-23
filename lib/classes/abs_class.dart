import 'dart:math' as math;
import 'dart:math';

abstract class Shape{
  double getArea();
}


class Circle extends Shape{
  double radius;

  Circle({required this.radius});

  @override
  double getArea() {
   return pi*(math.pow(radius, 2));
  }

}

class Rectangle extends Shape{
  double length;
  double width;

  Rectangle({required this.length,required this.width});

  @override
  double getArea() {
   return  width*length;
  }

}

class Triangle extends Shape{
  double base;
  double height;

  Triangle({ required this.base,required this.height});

  @override
  double getArea() {
    return  0.5*base*height;
  }

}