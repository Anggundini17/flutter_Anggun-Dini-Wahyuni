import 'dart:math';

abstract class BangunDatar {
  int getArea() {
    return getArea();
  }

  int getParimeter() {
    return getParimeter();
  }
}

class Circle implements BangunDatar {
  int radius;
  final pi1 = 22 / 7;
  final pi2 = 3.14;

  Circle({required this.radius});

  @override
  int getArea() {
    if (radius % 7 == 0) {
      var areaCircle = pi1 * pow(radius, 2);
      return areaCircle.toInt();
    } else {
      var areaCircle = pi2 * pow(radius, 2);
      return areaCircle.toInt();
    }
  }

  @override
  int getParimeter() {
    if (radius % 7 == 0) {
      var parimeterCircle = pi1 * 2 * radius;
      return parimeterCircle.toInt();
    } else {
      var parimeterCircle = pi2 * 2 * radius;
      return parimeterCircle.toInt();
    }
  }
}

class Square implements BangunDatar {
  int side;

  Square({required this.side});

  @override
  int getArea() {
    int areaSquare = side * side;
    return areaSquare;
  }

  @override
  int getParimeter() {
    int parimeterSquare = 4 * side;
    return parimeterSquare;
  }
}

class Rectangle implements BangunDatar {
  int width;
  int height;

  Rectangle({required this.width, required this.height});

  @override
  int getArea() {
    int areaRectangle = width * height;
    return areaRectangle;
  }

  @override
  int getParimeter() {
    int parimeterRectangle = 2 * (width + height);
    return parimeterRectangle;
  }
}

void main() {
  Circle c1 = Circle(radius: 15);
  Square s1 = Square(side: 21);
  Rectangle r1 = Rectangle(width: 10, height: 17);

  print(
      'The area of Square is ${s1.getArea()} and the parimeter is ${s1.getParimeter()}');
  print(
      'The area of Circle is ${c1.getArea()} and the parimeter is ${c1.getParimeter()}');
  print(
      'The area of Rectangle is ${r1.getArea()} and the parimeter is ${r1.getParimeter()}');
}
