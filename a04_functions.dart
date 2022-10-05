f0() {
  return 0;
}

int f1() {
  return 1 + 1;
}

int soma1(a, int b) {
  return a + b;
}

final Function noop = () {};

Function soma2 = (a, b) => a + b;

void exec(f) {
  f();
}

void f2(a, b, [c, d]) {
  // [] parametros posicionais opcionais
  print('f2 abcd $a $b $c $d');
}

void f3(a, b, {c, d}) {
  // {} parametros nomeados opcionais
  print('f3 abcd $a $b $c $d');
}

void f4(a, b, {required c, d}) {
  // {} parametros nomeados sao opcionais a menos que marcados como required
  print('f4 abcd $a $b $c $d');
}

void f5(a, b, [c, d = 1000]) {
  // parametros opcionais admitem valor default (precisa ser const)
  print('f5 abcd $a $b $c $d');
}

void f6(a, b, {c, d = 1000}) {
  print('f6 abcd $a $b $c $d');
}

//OBS: DART nao tem varargs por default (tinha, mas foi removido)

void main(List args) {
  print('main $args');
  print('f0 ${f0()}');
  print('f1 ${f1()}');
  print('soma1 ${soma1(1, 2)}');
  noop();
  print('soma2 ${soma2(3, 4)}');
  exec(() {
    print('Hello');
  });
  f2(1, 2, 3);
  // f3(1, 2, 3); // erro - arguments dont match
  f3(1, 2, d: 3);
  // f4(1, 2, d: 3); // erro - arguments dont match
  f4(1, 2, c: 3);
  f5(1, 2, 3);
  f6(1, 2, c: 3);
}
