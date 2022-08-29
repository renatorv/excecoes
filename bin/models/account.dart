class Account {
  String name;
  double balance;
  bool isAuthenticated;
  DateTime? createdAt; // ? indica que a propriedade pode ser nulo e tb não é obrigário na inicialização do objeto

  Account({
    required this.name,
    required this.balance,
    required this.isAuthenticated,
    this.createdAt,
  });
  // : assert(name.isNotEmpty, 'O nome não pode ser numa string vazia'),
  // assert(balance >= 0, 'O saldo não pode ser negativo');

  editBalance({required value}) {
    balance = balance + value;
  }
}
