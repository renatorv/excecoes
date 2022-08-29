import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety() {
  // inicializada sem o atributo createdAt
  Account? myAccount = Account(
    name: 'Renato',
    balance: 200,
    isAuthenticated: true,
  );

  // Simulando uma comunicação externa
  Random rng = Random();
  int randomNumber = rng.nextInt(10);
  if (randomNumber <= 5) {
    myAccount.createdAt = DateTime.now();
  }

  print(myAccount.createdAt);
  // Não funciona, pq o atributo .day pode ser nulo
  // print(myAccount.createdAt.day);
  print(myAccount.createdAt!
      .day); // aqui vai compilar porém em alguns casos vai imprimir nulo - erro em tempo de execução

  print(myAccount.balance);
  
  // não funciona pq essa validação só funciona para propriedades locais
  // e como estamos lidando com propriedades de fora do nosso escopo local 
  // Resolução: http://dart.dev/go/non-promo-property
  // Promover a variável, existem duas formas:
  // 1 - Criar uma variável local com a propriedade
  // final dya = myAccount.createdAt.day => dya é uma variável local e pode ser testada
  // 2 - Usar o bang ( ! ) => myAccount.createdAt!.day
  print(myAccount.createdAt!.day);

  // print('Tipo: ${myAccount.runtimeType}\n');

  // print(myAccount!.balance); // não é interessante usar o "BANG" ! => código inseguro em tempo de execução
  // if (myAccount != null) {
  //   print(myAccount.balance);
  // } else {
  //   print('Conta NULA!!');
  // }
  // ou
  // print(myAccount != null ? myAccount.balance : "Conta NULA!!");
  // ou => Safe Call - Chamada Segura
  print(myAccount.balance);
}

void main() {
  testingNullSafety();
  // print('object'.runtimeType);
  // print(null.runtimeType);
  // Null;

  // String naoPodeSerNula = "MyString";
  // // naoPodeSerNula = null;

  // String? podeSerNula = "MyString";
  // print(podeSerNula.runtimeType);
  // podeSerNula = null;
  // print(podeSerNula.runtimeType);

  // //
  // Account? myNullAccount = null;
  // // é igual a isso Account? myNullAccount;
  // print(myNullAccount.balance); // não aceita

  //
  // Assert
  // assert(2 < 1, 'Levantei o assert!!!');

  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  // Account accountTeste = Account(
  //   name: 'afsadf',
  //   balance: -100,
  //   isAuthenticated: true,
  // );
  //
  bankController.addAccount(
    id: "Ricarth",
    account:
        Account(name: "Ricarth Lima", balance: 400, isAuthenticated: false),
  );

  bankController.addAccount(
    id: "Kako",
    account: Account(name: "Caio Couto", balance: 600, isAuthenticated: true),
  );

  // Fazendo transferência
  try {
    bool result = bankController.makeTransfer(
      idSender: "Kako",
      idReceiver: "Ricarth",
      amount: 200,
    );

    if (result) {
      //print('TRANSAÇÃO REALIZADA COM SUCESSO!!!!');
    }

    // Observando resultado
    print(result);
  } on SenderIdInvalidException catch (e) {
    print(e);
    print('O REMETENTE COM ID: ${e.idSender} NÃO É VÁLIDO!');
  } on ReceiverIdInvalidException catch (e) {
    print(e);
    print('O DESTINATÁRIO COM ID: ${e.idReceiver} NÃO É VÁLIDO!');
  } on SenderNotAuthenticatedException catch (e) {
    print(e);
    print('O USUÁRIO REMETENTE COM ID: ${e.idSender} NÃO ESTÁ AUTENTICADO!');
  } on SenderBalanceLowerThanAmountException catch (e) {
    print(e);
    print(
        'O USUÁRIO DE ID: ${e.idSender}, TENTOU ENVIAR ${e.amount} SENDO QUE NA SUA CONTA TEM APENAS: R\$ ${e.senderBalance}');
  } on ReceiverNotAuthenticatedException catch (e) {
    print(e);
    print(
        'O USUÁRIO DESTINATÁRIO COM ID: ${e.idReceiver} NÃO ESTÁ AUTENTICADO!');
  } on Exception {
    print('ALGO DEU ERRADO!');
  }
}

// void main() {
//   throw FormatException();
// }
