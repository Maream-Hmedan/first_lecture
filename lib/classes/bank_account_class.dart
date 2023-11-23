class BankAccount {
  String accountNumber;
  String accountHolder;
  double _balance;

  double get getBalance {
    print("Updated balance = $_balance");
    return _balance;
  }

  BankAccount(this.accountNumber, this.accountHolder, this._balance);

  void deposit(double amount) {
    _balance = _balance + amount;
    print("Balance Become After deposit = $_balance");
  }

  void withdraw(double amount) {
    if(_balance>amount) {
      _balance = _balance - amount;
      print("Balance Become After withdraw = $_balance");
    }else{
      print("Insufficient _balance");
    }

  }

}
