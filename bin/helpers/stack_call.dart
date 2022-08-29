void stackStart() {
  print('Stated Main');
  functionOne();
  print('Finished Main');
}

functionOne() {
  print('Stated F01');
  try {
    functionTwo();
  } catch (e, s) {
    print('\naqui');
    print(s);
  } finally {
    print('Chegou no finally');
  }
  // on FormatException catch (e) {
  //   print('A conversão não pôde ser feita. Capturada na functionOne');
  //   print(e.message);
  //   print(e.source);
  //   print(e.toString());
  // } on HttpException catch (e) {
  //   print(e.toString());
  // } on IOException catch (e) {
  //   print("Uma IOException foi encontrada.");
  //   print(e.toString());
  // } on Exception catch (e) {
  //   print(e.toString());
  // }
  print('Finished F01');
}

functionTwo() {
  print('Stated F02');
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse('Not a number');
    // try {
    //   double amount = double.parse('Not a number');
    // } on FormatException {
    //   print('A conversão não pôde ser feita.');
    // }
  }
  print('Finished F02');
}

// **********************************************//

// DEBUG
// https://code.visualstudio.com/docs/editor/debugging

// GERANDO ERROS:
// void main() {
//   // double amount = double.parse("253,55"); // => FormatException: Invalid double
//   recursiveFunc(1); // => Stack Overflow
// }

// recursiveFunc(int count) {
//   print(count);
//   recursiveFunc(count + 1);
// }

//https://dart.dev/guides/language/language-tour#catch