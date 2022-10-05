import 'dart:math'; // https://api.dart.dev/stable/2.18.2/dart-math/dart-math-library.html

Point p1 = Point(1, 1);
Point? p2 = null;

void main() {
  print(p1.x);
  print(p2?.x); // ?. = tenta executar o . se p2 não for null
  // print(p2.x); // Isso NEM COMPILA! Vc é obrigado a usar o ?.
}
