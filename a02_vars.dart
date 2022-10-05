//olha... globais
int aint = 1;
double adouble = 3.14;
bool abool = true;
void avoid = 'É o que??';
var avar = 'Ah vá';
const String astring = 'hum... strings';
// E agora? 10 anos de python e javascript, como que eu vou lembrar desse ponto e virgula?!?!?!

void main() {
  abool = false;
  print('aint $aint');
  print('adouble $adouble');
  print('abool $abool');
  // print('avoid $avoid'); //erro
  print('avar $avar');
  // astring = 'outra string'; // erro ("setter not found" - eu esperava erro, mas nao assim)
  print('astring $astring');
  // avar = 6.7;  // erro - nao pode mudar o tipo (que coisa!)
  print(avar.runtimeType);

  List alist = [1, 'dois', true];
  print('alist $alist');
  print('alist[0] $alist[0] (oops)');
  print('alist[0] ${alist[0]} (assim sim)');
  print('alist[1] ${alist[1]}');
  print('alist[2] ${alist[2]}');

  Map amap = {'a': 1, 'b': 'dois', 3: true};
  print('amap ${amap}');
  print("amap.a ${amap['a']}");
  print("amap.b ${amap['b']}");
  // print("amap.b ${amap.b}"); // erro. tá pensando que é JS?
  print("amap.3 ${amap[3]}");

  String astring2;
  // print('astring2 ${astring2}'); // erro. unassigned
  // astring2 = null; // erro. Nao eh nullable. Dart eh null safe.
  astring2 = 'outra string';
  print('astring2 ${astring2} (agora sim)');

  String? astring3 = null; // ? = aceita null
  print('astring3 ${astring3}');
  // A proposito. Saporra é compilada. Um erro aqui de compilação embaixo previne a execução inteira.

  const int aint2 = 3;
  final int aint3 = 4;
  // Qual a diferença? Const é constante em compile-time. final é uma variável que não pode ser mudada
  // Vc pode ter uma variavel de instancia fina, mas não const.

  // aint2 = 30; // erro - cannot assign const
  // aint3 = 40; // erro - cannot assign final

  late int
      aint4; //late é só um marcador OPCIONAL pra deixar claro a intenção de inicializar depois

  aint4 = 5;
  aint4 = 6;
}
